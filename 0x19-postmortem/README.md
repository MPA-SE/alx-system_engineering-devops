Outage Postmortem: Critical Service Downtime

Issue Summary:
Duration: March 9, 2023, 3 PM - March 9, 2023, 4:30PM (NIGERIAN TIME)
Impact: Service unavailability causing disruptions.

Timeline:
03:15 PM: Issue detected 
03:20 PM: Investigation was initiated; suspected some connectivity issues.
03:45 PM: Misdiagnosed as overload; some measures applied.
03:30 PM: Issue escalated to senior engineering leads due to persistence.
03:45 PM: Further investigation revealed load balancer misconfiguration.
04:15 PM: Corrected load balancer settings to distribute traffic evenly.
04:30 PM: API service fully restored and tested.

Root Cause and Resolution:
Root Cause: The primary cause was a misconfigured load balancer. The settings were unintentionally changed during a recent deployment, causing uneven distribution of incoming requests. As a result, some backend servers were overwhelmed, leading to service degradation.

Resolution: The misconfigured settings were identified and reverted to their previous configuration. Backend server health checks were adjusted to ensure proper distribution of incoming traffic. Comprehensive testing was conducted to verify the solution.

Corrective and Preventative Measures:
Improvements/Fixes:
1. Automated Configuration Verification: Implement a system to validate load balancer configurations after each deployment to catch unintended changes.
2. Enhanced Monitoring: Set up real-time monitoring for load balancer performance metrics, immediately alerting the team to anomalies.
3. Documentation Update: Enhance documentation for load balancer configurations and maintenance procedures to prevent future misconfigurations.
4. Incident Response Training: Train the engineering team to quickly identify and address misconfigurations during critical incidents.

Tasks to Address the Issue:
1. Automated Load Balancer Audits: Develop scripts to automatically compare current load balancer configurations with baseline configurations.
2. Threshold-Based Alerts: Implement alerts based on predefined thresholds for backend server loads to identify performance deviations.
3. Regular Load Testing: Conduct regular load testing to simulate heavy traffic conditions, ensuring load balancer effectiveness.
4. Post-Deployment Checks: Include load balancer audits in the post-deployment checklist to catch any configuration drift.

Lessons Learned:
1. Assumptions can be misleading.
2. Timely escalation should be considered important.
3. Comprehensive testing: Implement rigorous testing after applying fixes to confirm the resolution's effectiveness and overall system stability.





