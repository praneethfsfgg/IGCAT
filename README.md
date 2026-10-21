# IGACT — ISMS Gap Analysis and Compliance Tracking

Original Python/Flask academic application with assessments, evidence, remediation, role-based access and PDF reporting.

The complete application source is in `project-source.zip`. The Dockerfile extracts it during the build. Download and extract it for local development; the source archive contains the local setup instructions and test suite.

Local validation: 41 tests passed. Hosted validation is pending deployment.

Railway: attach a persistent volume at `/data`, configure a random `SECRET_KEY` (32+ characters) and private `INITIAL_DEMO_PASSWORD` (16+ characters), then deploy. See DEPLOYMENT.md.

Synthetic demonstration data only; no real hospital or patient records are connected. Do not commit production secrets or database files.
