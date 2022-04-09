{{/*
Expand the name of the chart.
*/}}
{{- define "paperless.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "paperless.fullname" -}}
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
{{- define "paperless.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "paperless.labels" -}}
helm.sh/chart: {{ include "paperless.chart" . }}
{{ include "paperless.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "paperless.selectorLabels" -}}
app.kubernetes.io/name: {{ include "paperless.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "paperless.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "paperless.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Consumption host path
*/}}
{{- define "paperless.consumption.hostPath" -}}
{{- if .Values.consumption.enabled }}
{{- .Values.consumption.hostPath }}
{{- end }}
{{- end }}

{{/*
Consumption mount path
*/}}
{{- define "paperless.consumption.mountPath" -}}
{{- if .Values.consumption.enabled }}
{{- default "/consumption" .Values.consumption.mountPath }}
{{- end }}
{{- end }}

{{/*
Consumption enabled
*/}}
{{- define "paperless.consumption.enabled" -}}
{{- if .Values.consumption.enabled }}
{{- if and (include "paperless.consumption.hostPath" .) (include "paperless.consumption.mountPath" .) }}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Export host path
*/}}
{{- define "paperless.export.hostPath" -}}
{{- if .Values.export.enabled }}
{{- .Values.export.hostPath }}
{{- end }}
{{- end }}

{{/*
Export mount path
*/}}
{{- define "paperless.export.mountPath" -}}
{{- if .Values.export.enabled }}
{{- default "/export" .Values.export.mountPath }}
{{- end }}
{{- end }}

{{/*
Export enabled
*/}}
{{- define "paperless.export.enabled" -}}
{{- if .Values.export.enabled }}
{{- if and (include "paperless.export.hostPath" .) (include "paperless.export.mountPath" .) }}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}
