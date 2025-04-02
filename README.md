# Simple-User-Activity-Log-System-Using-Cassandra

Task: Build a Simple User Activity Log System Using Cassandra
- Objective:
- Create a basic User Activity Log System that stores a user’s activity logs (e.g., login, page view, etc.) and retrieves the most recent activities.
- Requirements:
- Data Modeling:
- Design a Cassandra schema to store the user activity logs. Each activity log should include:
- user_id: A unique identifier for the user (e.g., string or UUID).
- activity_id: A unique identifier for the activity (e.g., UUID).
- activity_type: Type of activity (e.g., “login”, “view”).
- timestamp: Timestamp of the activity.

- Optimize the schema for fast retrieval of user activities by different queries:
- Get all activities for a user.
- Get activities within a time range for a user.
- Get recent activities for a user.
- Data Insertion:
- Implement functionality to insert activity logs into the Cassandra database.
- Each log entry should be inserted with its corresponding activity type and timestamp.
- Data Retrieval:
- Implement a query to retrieve the most recent activities for a specific user.
- Retrieve all activities of a specific user within a time range.
- Add a simple TTL (Time-to-Live) feature to automatically expire old activity logs after a specified time (e.g., 30 days).
- Consistency and Fault Tolerance:
- Choose the right replication strategy to ensure fault tolerance and be ready to explain your choice.
Choose the right consistency level for reads and writes to balance consistency and performance.