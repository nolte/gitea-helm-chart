{{- define "giteaInit.fullname" -}}
{{ include "fullname" . }}-user
{{- end -}}

{{- define "giteaInit.cm.name" -}}
{{ include "fullname" . }}-cfg
{{- end -}}

{{- define "giteaInit.role.name" -}}
{{ include "fullname" . }}
{{- end -}}

{{/* Create the name of prometheus-operator service account to use */}}
{{- define "gitea.initUser.serviceAccountName" -}}
{{- if .Values.initUser.rbac.serviceAccount.create -}}
    {{ default (include "giteaInit.fullname" .) .Values.initUser.rbac.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.initUser.rbac.serviceAccount.name }}
{{- end -}}
{{- end -}}
