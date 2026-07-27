# Chart Name
{{- define "employee-platform.name" -}}
{{ .Chart.Name }}
{{- end }}

# Full Release Name
{{- define "employee-platform.fullname" -}}
{{- .Release.Name -}}
{{- end -}}

# PostgreSQL Name
{{- define "employee-platform.postgres.fullname" -}}
{{ printf "%s-postgres" .Release.Name }}
{{- end -}}

# Service Name
{{- define "employee-platform.service.fullname" -}}
{{ printf "%s-service" .Release.Name }}
{{- end -}}

# PostgreSQL Service Name
{{- define "employee-platform.postgres.service.fullname" -}}
{{ printf "%s-postgres-service" .Release.Name }}
{{- end -}}

# Selector Labels
{{- define "employee-platform.selectorLabels" -}}
app.kubernetes.io/name: {{ include "employee-platform.name" .root }}
app.kubernetes.io/instance: {{ .root.Release.Name }}
app.kubernetes.io/component: {{ .component }}
{{- end -}}

# Common Labels
{{- define "employee-platform.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .root.Chart.Name .root.Chart.Version | quote }}
app.kubernetes.io/managed-by: {{ .root.Release.Service }}
app.kubernetes.io/version: {{ .root.Chart.AppVersion | quote }}
{{ include "employee-platform.selectorLabels" . }}
{{- end -}}