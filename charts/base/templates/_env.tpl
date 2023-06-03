{{- define "base.findEnvValue" -}}
  {{- $EnvVarName := .EnvVarName -}}
  {{- range .Envs -}}
    {{- if eq .name $EnvVarName -}}
      {{ .value }}
    {{- end }}
  {{- end }}
{{- end }}
