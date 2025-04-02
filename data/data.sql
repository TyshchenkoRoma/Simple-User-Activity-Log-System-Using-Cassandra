CREATE KEYSPACE user_activity
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3};

USE user_activity;

CREATE TABLE user_activity (
                               user_id UUID,
                               activity_id UUID,
                               activity_type TEXT,
                               timestamp TIMESTAMP,
                               PRIMARY KEY (user_id, timestamp)
) WITH CLUSTERING ORDER BY (timestamp DESC)
    AND default_time_to_live = 2592000;

-- Get all activities for a user
SELECT * FROM user_activity WHERE user_id = ?;
-- Get activities within a time range for a user.
SELECT * FROM user_activity WHERE user_id = ?
    AND timestamp >= '2222-02-02' AND timestamp <= '2222-02-03';
-- Get recent activities for a user.
SELECT * FROM user_activity WHERE user_id = ?
    LIMIT 10;
-- Implement functionality to insert activity logs into the Cassandra database.
INSERT INTO user_activity (user_id, activity_id, activity_type, timestamp)
    VALUES (uuid(), uuid(), 'login', toTimestamp(now())));
-- Retrieve all activities of a specific user within a time range.
SELECT * FROM user_activity WHERE user_id = ?
    AND timestamp >= '2222-02-02' AND timestamp <= '2222-02-03';
-- Implement a query to retrieve the most recent activities for a specific user.
SELECT * FROM user_activity
    WHERE user_id = ? AND timestamp >= '2022-02-02' AND timestamp <= '2022-02-03'
    ORDER BY timestamp DESC;
-- in application.properties file
-- spring.data.cassandra.consistency-level.reads=QUORUM
-- spring.data.cassandra.consistency-level.writes=QUORUM