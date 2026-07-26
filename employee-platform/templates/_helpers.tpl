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