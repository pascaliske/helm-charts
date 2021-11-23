{{/*
Expand the name of the chart.
*/}}
{{- define "digitalocean-dyndns.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "digitalocean-dyndns.fullname" -}}
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
{{- define "digitalocean-dyndns.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "digitalocean-dyndns.labels" -}}
helm.sh/chart: {{ include "digitalocean-dyndns.chart" . }}
{{ include "digitalocean-dyndns.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "digitalocean-dyndns.selectorLabels" -}}
app.kubernetes.io/name: {{ include "digitalocean-dyndns.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "digitalocean-dyndns.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "digitalocean-dyndns.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Timezone
*/}}
{{- define "digitalocean-dyndns.timezone" -}}
{{- $timezone := dict -}}
{{- range $i, $val := .Values.env -}}
{{- if eq $val.name "TZ" -}}
{{- $_ := set $timezone "value" $val.value -}}
{{- end -}}
{{- end -}}
{{- default "UTC" (get $timezone "value") }}
{{- end }}

{{/*
Schedule
*/}}
{{- define "digitalocean-dyndns.schedule" -}}
{{- if semverCompare ">= 1.22" .Capabilities.KubeVersion.Version -}}
{{ printf "CRON_TZ=%s %s" (include "digitalocean-dyndns.timezone" . ) .Values.cronJob.schedule }}
{{- else -}}
{{ .Values.cronJob.schedule }}
{{- end -}}
{{- end }}
