unit wwaddfld;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TwwAddFieldForm = class(TForm)
    AddFieldsButton: TButton;
    DstList: TListBox;
    RemoveFieldsButton: TButton;
    procedure AddFieldsButtonClick(Sender: TObject);
    procedure RemoveFieldsButtonClick(Sender: TObject);
  private
    procedure ExcludeItems;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  wwAddFieldForm: TwwAddFieldForm;

implementation

{$R *.DFM}

procedure TwwAddFieldForm.AddFieldsButtonClick(Sender: TObject);
var selectedList: TStrings;
    i: integer;
    tempField: TField;
    DisplayWidthStr: string;
begin
   selectedList:= TStringlist.create;

   try
      if wwDlgSelectFields(GridTable, DstList.items, selectedList) then
      begin
         for i:= 0 to selectedList.count-1 do begin
            DstList.items.add(selectedList[i]);
               tempField:= GridTable.FindField(SelectedList[i]);
               if tempField<>Nil then begin
                  if propertyType = sptObjectViewType then DisplayWidthStr:= '0'
                  else DisplayWidthStr:= inttostr(tempfield.DisplayWidth);
                  GSelected.add(tempField.FieldName + #9 +
                    DisplayWidthStr + #9 +
                    tempField.DisplayLabel + #9 + 'F');
               end
         end;
      end
   finally
      selectedList.free;
   end

end;

procedure TwwAddFieldForm.RemoveFieldsButtonClick(Sender: TObject);
begin
  ExcludeItems;
end;

procedure TSelFieldsForm.ExcludeItems;
var
  I, SelIndex: Integer;
begin
  with DstList do
  begin
    I := 0;
    while SelCount > 0 do
    begin
      if Selected[I] then
      begin
        SrcListItems.add(Items[i]);
        if wwFindSelected(GSelected, Items[i], selindex) then
           GSelected.delete(selIndex);
        Items.Delete(I);
      end
      else
        Inc(I);
    end;
    if Items.Count = 0 then begin
      DisplayWidth.Text:= '';
      DisplayTitle.Text:= '';
      GroupName.text:= '';
    end
    else begin
      DstList.ItemIndex:= 0;
      SelectDest(i);  { Select close to last entry }
    end
  end;

end;


end.
