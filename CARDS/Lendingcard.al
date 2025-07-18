page 50131 "Lending Card"
{
    PageType = Card;
    SourceTable = "Lending";
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Lending Details';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Lending ID"; 'Lending ID') { }
                field("Student ID"; 'Student ID') { }
                field("Book ID"; 'Book ID') { }
                field("Date Lent"; 'Date Lent') { }
                field("Due Date"; 'Due Date') { }
                field("Returned Date"; 'Returned Date') { }
            }
        }
    }
}

   