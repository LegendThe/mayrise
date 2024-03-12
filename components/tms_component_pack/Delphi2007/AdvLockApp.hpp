// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Advlockapp.pas' rev: 11.00

#ifndef AdvlockappHPP
#define AdvlockappHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Extctrls.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Advlockapp
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TLockDialog;
class PASCALIMPLEMENTATION TLockDialog : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	AnsiString FLabelPassword;
	AnsiString FLabelUserName;
	AnsiString FCaption;
	
public:
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__fastcall TLockDialog(void);
	
__published:
	__property AnsiString Caption = {read=FCaption, write=FCaption};
	__property AnsiString LabelUsername = {read=FLabelUserName, write=FLabelUserName};
	__property AnsiString LabelPassword = {read=FLabelPassword, write=FLabelPassword};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TLockDialog(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TVerifyPasswordEvent)(System::TObject* Sender, AnsiString Password, bool &Valid);

typedef void __fastcall (__closure *TQueryUnlockEvent)(System::TObject* Sender, bool &AllowUnlock);

class DELPHICLASS TAdvLockApp;
class PASCALIMPLEMENTATION TAdvLockApp : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	bool FLocked;
	Graphics::TIcon* FLockedIcon;
	Graphics::TIcon* FUnLockedIcon;
	AnsiString FPassword;
	AnsiString FUserName;
	bool FEnabled;
	int FSeconds;
	Forms::TIdleEvent FOnIdle;
	Forms::TForm* FActiveForm;
	Forms::TForm* FModalActiveForm;
	Extctrls::TTimer* Ftimer;
	bool FIncorrectPW;
	bool FIsWin7;
	Classes::TWndMethod FFormWndProc;
	Classes::TWndMethod FModalFormWndProc;
	Forms::TIdleEvent FAppIdle;
	Forms::TMessageEvent FAppMessage;
	Classes::TNotifyEvent FOnLock;
	Classes::TNotifyEvent FOnUnLock;
	TLockDialog* FDialog;
	TVerifyPasswordEvent FOnVerifyPassword;
	Classes::TNotifyEvent FOnIncorrectPassword;
	AnsiString FIncorrectPassword;
	TQueryUnlockEvent FOnQueryUnlock;
	bool FActivatingHack;
	bool FIsWinXP;
	bool FIsD2k7Lvl;
	void __fastcall DoIdle(System::TObject* Sender, bool &Done);
	void __fastcall DoMessage(tagMSG &Msg, bool &Handled);
	void __fastcall UnlockPWDlg(void);
	void __fastcall DoLockUnlock(void);
	void __fastcall SetLockedIcon(Graphics::TIcon* Value);
	void __fastcall SetUnLockedIcon(Graphics::TIcon* Value);
	void __fastcall SetMinutes(int Value);
	int __fastcall GetMinutes(void);
	void __fastcall SetEnabled(bool Value);
	void __fastcall OnTimer(System::TObject* Sender);
	AnsiString __fastcall GetVersion();
	void __fastcall SetVersion(const AnsiString Value);
	void __fastcall SetActiveForm(void);
	void __fastcall SetSeconds(const int Value);
	void __fastcall SetDialog(const TLockDialog* Value);
	
protected:
	bool __fastcall HookProc(Messages::TMessage &Message);
	void __fastcall SubClassProc(Messages::TMessage &Message);
	void __fastcall ModalSubClassProc(Messages::TMessage &Message);
	virtual void __fastcall Loaded(void);
	virtual bool __fastcall DoVerifyPassword(AnsiString Password, bool &Valid);
	virtual void __fastcall DoIncorrectPassword(void);
	virtual bool __fastcall DoQueryUnlock(void);
	HBITMAP __fastcall GetPreviewBtimap(int Height, int Width);
	virtual HRESULT __fastcall DoSetIconicThumbnail(unsigned Wnd, int Width, int Height);
	
public:
	__fastcall virtual TAdvLockApp(Classes::TComponent* AOwner);
	__fastcall virtual ~TAdvLockApp(void);
	virtual int __fastcall GetVersionNr(void);
	void __fastcall Lock(void);
	
__published:
	__property TLockDialog* Dialog = {read=FDialog, write=SetDialog};
	__property AnsiString Password = {read=FPassword, write=FPassword};
	__property AnsiString UserName = {read=FUserName, write=FUserName};
	__property Graphics::TIcon* LockedIcon = {read=FLockedIcon, write=SetLockedIcon};
	__property Graphics::TIcon* UnLockedIcon = {read=FUnLockedIcon, write=SetUnLockedIcon};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int IdleMinutes = {read=GetMinutes, write=SetMinutes, default=0};
	__property int IdleSeconds = {read=FSeconds, write=SetSeconds, default=10};
	__property AnsiString IncorrectPassword = {read=FIncorrectPassword, write=FIncorrectPassword};
	__property AnsiString Version = {read=GetVersion, write=SetVersion};
	__property Forms::TIdleEvent OnIdle = {read=FOnIdle, write=FOnIdle};
	__property TQueryUnlockEvent OnQueryUnlock = {read=FOnQueryUnlock, write=FOnQueryUnlock};
	__property Classes::TNotifyEvent OnLock = {read=FOnLock, write=FOnLock};
	__property Classes::TNotifyEvent OnUnLock = {read=FOnUnLock, write=FOnUnLock};
	__property TVerifyPasswordEvent OnVerifyPassword = {read=FOnVerifyPassword, write=FOnVerifyPassword};
	__property Classes::TNotifyEvent OnIncorrectPassword = {read=FOnIncorrectPassword, write=FOnIncorrectPassword};
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint MAJ_VER = 0x1;
static const Shortint MIN_VER = 0x0;
static const Shortint REL_VER = 0x0;
static const Shortint BLD_VER = 0x6;

}	/* namespace Advlockapp */
using namespace Advlockapp;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Advlockapp
