CREATE TABLE IF NOT EXISTS clerk(
    Worker_ID INT(50) PRIMARY KEY CHECK
        (Worker_ID >= 0),
        Shift VARCHAR(11) NOT NULL,
        ShiftHoursPW INT(11) NOT NULL,
        FOREIGN KEY(Worker_ID) REFERENCES worker(Worker_ID)
);
CREATE TABLE IF NOT EXISTS manager(
    Worker_ID INT(50) PRIMARY KEY CHECK
        (Worker_ID >= 0),
        NumWorkersUHR INT(11) NOT NULL,
        PerformanceRating INT(11) NOT NULL,
        YearsOfExperience INT(11) NOT NULL,
        Education VARCHAR(50) NOT NULL,
        LevelOfAuthority VARCHAR(50) NOT NULL,
        FOREIGN KEY(Worker_ID) REFERENCES worker(Worker_ID)
);
CREATE TABLE salaries(
    Worker_ID INT(50) PRIMARY KEY CHECK
        (Worker_ID >= 0),
    LastUpdate DATE NOT NULL,
    Net INT(11) NOT NULL,
    FOREIGN KEY(Worker_ID) REFERENCES worker(Worker_ID)
);
