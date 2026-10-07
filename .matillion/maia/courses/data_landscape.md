## maia_sample_service_performance
Records performance metrics for services across different environments, capturing request volume, errors, and response times at specific points in time.
Columns: record_id, service_id, environment_id, timestamp, request_count, error_count, latency_ms

## maia_sample_service
Provides reference information about each service including its classification, owning team, and service level agreements.
Columns: service_id, service_name, service_type, owner_team, sla_response_hours

## maia_sample_environment
Provides reference information about deployment environments including their geographic location, capacity, and maintenance schedules.
Columns: environment_id, environment_name, region, capacity_gb, maintenance_window

## Data Relationships
maia_sample_service_performance.service_id → maia_sample_service.service_id
maia_sample_service_performance.environment_id → maia_sample_environment.environment_id

## Use Cases
As a data engineer, you can use these tables to monitor and optimize service reliability across your infrastructure. Query maia_sample_service_performance to analyze error rates and latency trends for services in maia_sample_service, then correlate performance issues with environment capacity and maintenance windows from maia_sample_environment. This enables you to identify bottlenecks, validate SLA compliance, and make data-driven decisions about resource allocation and infrastructure scaling.