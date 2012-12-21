       01 CUSTOMER-COMPLAINT.
             10 VERSION          PIC 9. 
             10 CUSTOMER-NAME.
                15 N-FIRST       PIC X(10).
                15 N-LAST        PIC X(10).
             10 CUSTOMER-ADDRESS. 
                15 A-LINE   PIC X(20) OCCURS 2 TIMES.
                15 TOWN          PIC X(10).
                15 ZIP           PIC X(10).
                15 COUNTRY       PIC X(2).
             10 COMPLAINT.
                15 C-TYPE        PIC X(10).
                15 C-REF         PIC X(10).
                15 C-TEXT        PIC X(200).
             