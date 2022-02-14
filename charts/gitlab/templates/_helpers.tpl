{{/*
Expand the name of the chart.
*/}}
{{- define "gitlab.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gitlab.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "gitlab.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "gitlab.labels" -}}
helm.sh/chart: {{ include "gitlab.chart" . }}
{{ include "gitlab.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "gitlab.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gitlab.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "gitlab.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "gitlab.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Timezone
*/}}
{{- define "gitlab.timezone" -}}
{{- $timezone := dict -}}
{{- range $i, $val := .Values.env -}}
{{- if eq $val.name "TZ" -}}
{{- $_ := set $timezone "value" $val.value -}}
{{- end -}}
{{- end -}}
{{- default "UTC" (get $timezone "value") }}
{{- end }}

{{/*
Backups host path
*/}}
{{- define "gitlab.backups.hostPath" -}}
{{- if .Values.backups.enabled }}
{{- .Values.backups.hostPath }}
{{- end }}
{{- end }}

{{/*
Backups mount path
*/}}
{{- define "gitlab.backups.mountPath" -}}
{{- if .Values.backups.enabled }}
{{- default "/backups" .Values.backups.mountPath }}
{{- end }}
{{- end }}

{{/*
Backups enabled
*/}}
{{- define "gitlab.backups.enabled" -}}
{{- if .Values.backups.enabled }}
{{- if and (include "gitlab.backups.hostPath" .) (include "gitlab.backups.mountPath" .) }}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Backups schedule
*/}}
{{- define "gitlab.backups.schedule" -}}
{{- if semverCompare ">= 1.22" .Capabilities.KubeVersion.Version -}}
{{ printf "CRON_TZ=%s %s" (include "gitlab.timezone" . ) .Values.backups.cronJob.schedule }}
{{- else -}}
{{ .Values.backups.cronJob.schedule }}
{{- end -}}
{{- end }}

{{/*
Backups command
*/}}
{{- define "gitlab.backups.command" -}}
{{ printf "kubectl exec -it -n %s deploy/%s -- gitlab-backup create" .Release.Namespace (include "gitlab.fullname" . ) }}
{{- end }}
