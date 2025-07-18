page 50110 "Student List"
{
    PageType = List;
    SourceTable = "Student";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Student List';

    layout
    {
        area(content)
        {
            repeater(Students)
            {
                field("Student ID"; 'Student ID') { }
                field(Name; 'Name') { }
                field(Class; 'Class') { }
                field(Phone; 'Phone') { }
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
                RunObject = page "StudentCard";
                RunPageLink = "Student ID"=field("Student ID");
            }
        }
    }
}