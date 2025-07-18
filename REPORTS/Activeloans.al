report 50140 "Active Loans Report"

{
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    Caption = 'Active Book Loans';

    dataset
    {
        dataitem(Lending; Lending)
        {
            DataItemTableView = where("Retur n Date" = const(''));

            column("LendingID"; "Lending ID") { }
            column("StudentID"; "Student ID") { }
            column("BookID"; "Book ID") { }
            column("LendingDate"; "Lending Date") { }
            column("ReturnDate"; "Return Date") { }
        }
    }

    requestpage
    {
    }

    layout
    {
        area(content)
        {
            text("Active Loans Report");
            text("This report lists all active loans where the return date is not set.");

            repeater(Group)
            {
                field("LendingID"; "LendingID") { }
                field("StudentID"; "StudentID") { }
                field("BookID"; "BookID") { }
                field("LendingDate"; "LendingDate") { }
                field("ReturnDate"; "ReturnDate") { }
            }
        }
    }
}