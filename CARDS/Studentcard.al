page 50112 "StudentCard"
{
    PageType = Card;
    SourceTable = "Student";
    Caption = 'Student Details';
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Student ID"; Rec."Student ID")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Class; Rec.Class)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("save")
            {
                Caption = 'save student';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Rec.Modify(true);
                end;
                
            }
        }
    }
}
    
