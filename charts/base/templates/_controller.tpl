{{/*
Controller kind
*/}}
{{- define "base.controller.kind" -}}
{{- if eq .Values.controller.kind "StatefulSet" -}}
{{- printf "StatefulSet" }}
{{- else -}}
{{- printf "Deployment" }}
{{- end -}}
{{- end }}
