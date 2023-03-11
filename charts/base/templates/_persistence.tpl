{{/*
Flag if persistence is enabled.
*/}}
{{- define "base.persistence.enabled" -}}
{{- if or .Values.persistentVolumeClaim.create (not (empty .Values.persistentVolumeClaim.existingPersistentVolumeClaim)) }}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Flag if persistence should be created.
*/}}
{{- define "base.persistence.created" -}}
{{- if and .Values.persistentVolumeClaim.create (empty .Values.persistentVolumeClaim.existingPersistentVolumeClaim) }}
{{- printf "true" }}
{{- else }}
{{- printf "false" }}
{{- end }}
{{- end }}

{{/*
Persistence controller type
*/}}
{{- define "base.persistence.type" -}}
{{- if eq (include "base.persistence.created" . ) "true" -}}
{{- if eq (include "base.controller.kind" . ) "StatefulSet" -}}
{{- printf "volumeClaimTemplates" }}
{{- else }}
{{- printf "volumes" }}
{{- end }}
{{- else }}
{{- printf "volumes" }}
{{- end }}
{{- end }}


{{/*
Persistence object name
*/}}
{{- define "base.persistence.suffix" -}}
{{ printf "%s-storage" . }}
{{- end }}

{{/*
Persistence object specification
*/}}
{{- define "base.persistence.spec" -}}
accessModes:
  - {{ default "ReadWriteOnce" .Values.persistentVolumeClaim.accessMode }}
resources:
  requests:
    storage: {{ default "1Gi" .Values.persistentVolumeClaim.size }}
{{- with .Values.persistentVolumeClaim.volumeMode }}
volumeMode: {{ . }}
{{- end }}
{{- with .Values.persistentVolumeClaim.storageClassName }}
storageClassName: {{ . }}
{{- end }}
{{- end }}

{{/*
Persistence volume specification (for pods)
*/}}
{{- define "base.persistence.volumeSpec" -}}
{{- if and (eq .type "hostPath") .hostPath -}}
- name: {{ .name }}
  hostPath:
    {{- toYaml .hostPath | nindent 4 -}}
{{- else if and (eq .type "pvc") .persistentVolumeClaim -}}
- name: {{ .name }}
  persistentVolumeClaim:
    {{- toYaml .persistentVolumeClaim | nindent 4 -}}
{{- else if and (eq .type "csi") .csi -}}
- name: {{ .name }}
  csi:
    {{- toYaml .csi | nindent 4 -}}
{{- else if and (eq .type "nfs") .nfs -}}
- name: {{ .name }}
  nfs:
    {{- toYaml .nfs | nindent 4 -}}
{{- else -}}
- name: {{ .name }}
  emptyDir: {{ if empty .emptyDir -}}{}{{- end -}}
    {{- if .emptyDir -}}
    {{- toYaml .emptyDir | nindent 4 -}}
    {{- end -}}
{{- end -}}
{{- end -}}
