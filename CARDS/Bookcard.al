page 50121 "Book Card"
{
    PageType = Card;
    SourceTable = "Books";
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Book Details';

    layout
    {
        area(content)
        {
            group(General)
            {
                field(BookID; 'BookID') { }
                field(Title; 'Title') { }
                field(Author; 'Author') { }
                field(ISBN; 'ISBN') { }
                field(Status; 'Status') { }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("save")
            {
                Caption = 'Save Book';
                ApplicationArea = All;
                trigger OnAction()
                begin
                Rec.Modify(true)
                end;
            }
        }
    }
}