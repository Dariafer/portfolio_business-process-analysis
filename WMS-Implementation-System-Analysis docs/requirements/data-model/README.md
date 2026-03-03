Data Model
This section contains the logical and physical database design for the WMS implementation project.
The data model supports stock movement management, task execution, synchronization with ERP, and operational traceability.

Logical ER
The logical model describes core entities and their relationships:
Product
Location
Stock_Balance
Movement_Request
Movement_Request_Line
Movement_Task
Movement_Execution
Employee
TSD_Device
Movement_Document

The model ensures:
Unique stock per (product, location)
Separation between business request and operational execution
Full traceability of stock movements



Physical Data Model
The physical model defines:
Table structure
Primary and foreign keys
Constraints and indexes
Data types

The schema is optimized for transactional consistency and real-time synchronization with ERP.
