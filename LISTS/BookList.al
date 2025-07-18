page 50120 "Book List"
{
    PageType = List;
    SourceTable = "Books";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Book List';

    layout
    {
        area(content)
        {
            repeater(Books)
            {
                field("Book ID"; 'Book ID') { }
                field(Title; 'Title') { }
                field(Author; 'Author') { }
                field(ISBN; 'ISBN') { }
                field(Status; 'Status') { }
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
                RunObject = page "Book Card";
                RunPageLink = "Book ID" = field("Book ID");
            }
        }
    }
}