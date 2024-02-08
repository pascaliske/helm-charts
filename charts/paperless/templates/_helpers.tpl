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
{{- if and .Values.consumption.enabled (include "paperless.consumption.mountPath" . ) -}}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Media mount path
*/}}
{{- define "paperless.media.mountPath" -}}
{{- if .Values.media.enabled }}
{{- default "/media" .Values.media.mountPath }}
{{- end }}
{{- end }}

{{/*
Media enabled
*/}}
{{- define "paperless.media.enabled" -}}
{{- if and .Values.media.enabled (include "paperless.media.mountPath" . ) -}}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
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
{{- if and .Values.export.enabled (include "paperless.export.mountPath" . ) -}}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Export command
*/}}
{{- define "paperless.export.command" -}}
{{ printf "kubectl exec -it -n %s deploy/%s -- document_exporter %s" .Release.Namespace (include "paperless.fullname" . ) (include "paperless.export.mountPath" . ) }}
{{- end }}

{{/*
Trash mount path
*/}}
{{- define "paperless.trash.mountPath" -}}
{{- if .Values.trash.enabled }}
{{- default "/export" .Values.trash.mountPath }}
{{- end }}
{{- end }}

{{/*
Trash enabled
*/}}
{{- define "paperless.trash.enabled" -}}
{{- if and .Values.trash.enabled (include "paperless.trash.mountPath" . ) -}}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Certificate name
*/}}
{{- define "paperless.certificate.name" -}}
{{- if not (empty .Values.certificate.dnsNames) }}
{{- first .Values.certificate.dnsNames }}
{{- else }}
{{- include "paperless.fullname" . }}
{{- end }}
{{- end }}

{{/*
Certificate secret name
*/}}
{{- define "paperless.certificate.secretName" -}}
{{- if not (empty .Values.certificate.secretName) }}
{{- .Values.certificate.secretName }}
{{- else }}
{{- include "paperless.certificate.name" . }}
{{- end }}
{{- end }}

{{/*
Certificate issuer reference name
*/}}
{{- define "paperless.certificate.issuerRefName" -}}
{{- required "Mandatory field \".certificate.issuerRef.name\" is empty!" .Values.certificate.issuerRef.name -}}
{{- end }}

{{/*
IngressRoute TLS secret name
*/}}
{{- define "paperless.ingressRoute.tlsSecretName" -}}
{{- if not (empty .Values.ingressRoute.tlsSecretName) }}
{{- .Values.ingressRoute.tlsSecretName }}
{{- else if .Values.certificate.create }}
{{- include "paperless.certificate.name" . }}
{{- end }}
{{- end }}
