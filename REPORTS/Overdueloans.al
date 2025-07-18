report 50110 "Overdue Books Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Overdue Books Report';
    ProcessingOnly = false;

    dataset
    {
        dataitem(Lending; "Lending")
        {
            // Remove invalid DataItemTableView property

            column(StudentID; "Student ID") { }
            column(BookID; "Book ID") { }
            column(Lending_Date; "Lending Date") { }
            column(ReturnDate; "Return Date") { }

            trigger OnPreDataItem()
            begin
                // Filter for blank Return Date
                SetRange("Return Date", '');
                // Filter for Lending Date up to today
                SetFilter("Lending Date", '..%1', Today);
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Group)
                {
                    field(StudentID; Lending."Student ID") { }
                    field(BookID; Lending."Book ID") { }
                    field(Lending_Date; Lending."Lending Date") { }
                    field(ReturnDate; Lending."Return Date") { }
                }
            }
        }
    }
}
