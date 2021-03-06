{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nodejs.name" -}}
{{- default .Release.Name .Values.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "nodejs.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nodejs.metaLabels" -}}
app.kubernetes.io/name: {{ template "nodejs.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/component: {{ default (include "nodejs.name" .) .Values.appComponent }}
app.kubernetes.io/part-of: {{ default (include "nodejs.name" .) .Values.appPartOf }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "nodejs.selectorLabels" -}}
app.kubernetes.io/name: {{ template "nodejs.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

