page 50130 "Lending List"
{
    PageType = List;
    SourceTable = "Lending";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Lending List';

    layout
    {
        area(content)
        {
            repeater(Lendings)
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

    actions
    {
        area(processing)
        {
            action("Open Card")
            {
                Caption = 'View Details';
                ApplicationArea = All;
                RunObject = page "Lending Card";
                RunPageLink = "Lending ID" = field("Lending ID");
            }
        }
    }
}