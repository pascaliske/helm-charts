{{/*
Renders a complete tree, even values that contains template.
*/}}
{{- define "base.render" -}}
  {{- if typeIs "string" .value }}
    {{- tpl .value .context }}
  {{ else }}
    {{- tpl (.value | toYaml) .context }}
  {{- end }}
{{- end -}}

{{/*
Renders extra objects using render helper.
*/}}
{{- define "base.extraObjects" -}}
{{- range .Values.extraObjects }}
---
{{ include "base.render" (dict "value" . "context" $) }}
{{- end }}
{{- end -}}
