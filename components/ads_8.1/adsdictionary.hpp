// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Adsdictionary.pas' rev: 11.00

#ifndef AdsdictionaryHPP
#define AdsdictionaryHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Sysutils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Ace.hpp>	// Pascal unit
#include <Adsset.hpp>	// Pascal unit
#include <Db.hpp>	// Pascal unit
#include <Adscnnct.hpp>	// Pascal unit
#include <Inifiles.hpp>	// Pascal unit
#include <Adsdata.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Adsdictionary
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TAdsPermissionType { ptRead, ptUpdate, ptExecute, ptInherit, ptInsert, ptDelete, ptLinkAccess, ptDrop, ptAlter, ptCreate, ptWithGrant, ptAll, ptAllWithGrant };
#pragma option pop

typedef Set<TAdsPermissionType, ptRead, ptAllWithGrant>  TAdsPermissionTypes;

#pragma option push -b-
enum TAdsTrigType { ttBefore, ttInsteadOf, ttAfter, ttOnConflict };
#pragma option pop

#pragma option push -b-
enum TAdsTrigEventType { etInsert, etUpdate, etDelete };
#pragma option pop

#pragma option push -b-
enum TAdsTrigContainerType { ctStdLib, ctCOM, ctScript };
#pragma option pop

#pragma option push -b-
enum TAdsTrigOption { toNoMemosOrBlobs, toNoValues, toNoTransaction };
#pragma option pop

typedef Set<TAdsTrigOption, toNoMemosOrBlobs, toNoTransaction>  TAdsTrigOptions;

#pragma option push -b-
enum TAdsSubscriptionOption { soStaticQueue, soAISTarget, soIgnoreFailedReplication, soLogFailedData };
#pragma option pop

typedef Set<TAdsSubscriptionOption, soStaticQueue, soLogFailedData>  TAdsSubscriptionOptions;

#pragma option push -b-
enum TAdsPublicationOption { soNoOptions };
#pragma option pop

typedef Set<TAdsPublicationOption, soNoOptions, soNoOptions>  TAdsPublicationOptions;

#pragma option push -b-
enum TAdsArticleOption { aoIdentifyByPrimaryKey, aoIdentifyByAllFields };
#pragma option pop

typedef Set<TAdsArticleOption, aoIdentifyByPrimaryKey, aoIdentifyByAllFields>  TAdsArticleOptions;

class DELPHICLASS TAdsDictionary;
typedef void __fastcall (__closure *TAdsDatabaseLoginEvent)(TAdsDictionary* AdsDictionary, AnsiString &Username, AnsiString &Password);

class PASCALIMPLEMENTATION TAdsDictionary : public Classes::TComponent 
{
	typedef Classes::TComponent inherited;
	
private:
	int FhConnection;
	unsigned __fastcall FormatPermissionSet(TAdsPermissionTypes Permissions);
	
protected:
	bool FbNoPath;
	bool FbConnectAfterLoad;
	Adsset::TAdsServerTypes FAdsServerTypes;
	AnsiString FstrUserName;
	AnsiString FstrPassword;
	int FhObject;
	bool FConnected;
	AnsiString FConnectString;
	AnsiString FConnectPath;
	bool FLoginPrompt;
	AnsiString FstrAliasName;
	AnsiString FstrAliasPath;
	Word FusServerType;
	bool FbEncrypted;
	AnsiString FstrComments;
	Adscnnct::TAdsCompressionTypes FAdsCompression;
	Adscnnct::TAdsCommunicationType FAdsCommunicationType;
	TAdsDatabaseLoginEvent FOnLogin;
	Classes::TNotifyEvent FOnConnect;
	Classes::TNotifyEvent FOnDisconnect;
	virtual void __fastcall SetConnected(bool bActive);
	virtual void __fastcall SetAliasName(AnsiString strAlias);
	virtual void __fastcall DoOnConnect(void);
	virtual void __fastcall DoOnDisconnect(void);
	virtual void __fastcall SetAdsServerTypes(Adsset::TAdsServerTypes Value);
	virtual AnsiString __fastcall GetConnectString();
	virtual void __fastcall SetConnectString(AnsiString strConnect);
	virtual void __fastcall Open(void);
	virtual void __fastcall Close(void);
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TAdsDictionary(Classes::TComponent* Owner);
	__fastcall virtual ~TAdsDictionary(void);
	__property Adscnnct::TAdsCompressionTypes Compression = {read=FAdsCompression, write=FAdsCompression, nodefault};
	void __fastcall Connect(void);
	void __fastcall Disconnect(void);
	virtual void __fastcall CreateDictionary(AnsiString strPath, bool bEncrypt, AnsiString strDescription);
	virtual void __fastcall SetDatabaseProperty(Word usPropertyID, void * pvProperty, Word usLength);
	virtual void __fastcall GetDatabaseProperty(Word usPropertyID, void * pvProperty, Word &usBufferLength);
	virtual void __fastcall GetPropertyList(Word usListType, AnsiString strTableName, Classes::TStringList* poObjectList);
	virtual void __fastcall GetTriggerList(Word usListType, AnsiString strTableName, Classes::TStringList* poObjectList);
	virtual void __fastcall GetTableNames(Classes::TStringList* poTableNames);
	virtual void __fastcall GetTablesAndLinks(Classes::TStringList* poLinkNames, Classes::TStringList* poTableNames);
	virtual void __fastcall GetIndexNamesPerIndexFile(AnsiString strTableName, AnsiString strIndexFileName, Classes::TStringList* poIndexNames);
	virtual void __fastcall GetIndexNames(AnsiString strTableName, Classes::TStringList* poIndexNames);
	virtual void __fastcall GetIndexFileNames(AnsiString strTableName, Classes::TStringList* poIndexFileNames);
	virtual void __fastcall GetIndexFileProperty(AnsiString strTableName, AnsiString strIndexFileName, Word usPropertyID, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall GetIndexProperty(AnsiString strTableName, AnsiString strIndexName, Word usPropertyID, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall GetProcedureProperty(AnsiString strProcName, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall GetViewNames(Classes::TStringList* poViewNames);
	virtual void __fastcall GetStoredProcedureNames(Classes::TStringList* poStoredProcNames);
	virtual void __fastcall GetFieldNames(AnsiString strTablename, Classes::TStringList* poFieldNames);
	virtual void __fastcall GetRINames(Classes::TStringList* poRINameList);
	virtual void __fastcall AddTable(AnsiString strTableName, AnsiString strTablePath, AnsiString strIndexFiles, AnsiString strComments, Adsdata::TAdsTableTypes TableType, Adsdata::TAdsCharTypes CharType);
	virtual void __fastcall RemoveTable(AnsiString strTableName, bool bDelete);
	virtual void __fastcall SetTableProperty(AnsiString strTableName, Word usPropertyID, void * pvProperty, Word usPropertyLen, Word usValidateOption, AnsiString strFailTable);
	virtual void __fastcall GetTableProperty(AnsiString strTableName, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall SetFieldProperty(AnsiString strTableName, AnsiString strFieldName, Word usPropertyID, void * pvProperty, Word usPropertyLen, Word usValidateOption, AnsiString strFailTable);
	virtual void __fastcall GetFieldProperty(AnsiString strTableName, AnsiString strFieldName, Word usPropertyID, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall RemoveIndex(AnsiString strTableName, AnsiString strTagName);
	virtual void __fastcall AddIndexFile(AnsiString strTableName, AnsiString strIndexFilePath, AnsiString strComment);
	virtual void __fastcall RemoveIndexFile(AnsiString strTableName, AnsiString strIndexFileName, bool bDelete);
	virtual void __fastcall RemoveRI(AnsiString strRIName);
	virtual void __fastcall FindFirstObject(Word usFindObjectType, AnsiString strParentName, char * pcObjectName, Ace::PUNSIGNED16 pusObjectNameLen, Ace::PADSHANDLE phFindHandle);
	virtual void __fastcall FindNextObject(int hFindHandle, char * pcObjectName, Ace::PUNSIGNED16 pusObjectNameLen);
	virtual void __fastcall FindClose(int hFindHandle);
	virtual void __fastcall CreateRI(AnsiString strRIName, AnsiString strFailTable, AnsiString strParentTable, AnsiString strParentTagName, AnsiString strChildTable, AnsiString strChildTagName, Word usUpdateRule, Word usDeleteRule)/* overload */;
	virtual void __fastcall CreateRI(AnsiString strRIName, AnsiString strFailTable, AnsiString strParentTable, AnsiString strParentTagName, AnsiString strChildTable, AnsiString strChildTagName, Word usUpdateRule, Word usDeleteRule, AnsiString strNoPKeyError, AnsiString strCascadeError)/* overload */;
	virtual void __fastcall GetRIProperty(AnsiString strRIName, Word usPropertyID, void * pvProperty, Word &usLength);
	virtual void __fastcall AddView(AnsiString strName, AnsiString strComments, AnsiString strSQL);
	virtual void __fastcall RemoveView(AnsiString strName);
	virtual void __fastcall GetViewProperty(AnsiString strViewName, Word usPropertyID, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall AddUser(AnsiString strGroupName, AnsiString strUserName, AnsiString strPassword, AnsiString strDescription);
	virtual void __fastcall RemoveUser(AnsiString strUserName);
	virtual void __fastcall AddUserToGroup(AnsiString strGroupName, AnsiString strUserName);
	virtual void __fastcall RemoveUserFromGroup(AnsiString strGroupName, AnsiString strUserName);
	virtual void __fastcall CreateUserGroup(AnsiString strGroupName, AnsiString strDescription);
	virtual void __fastcall DeleteUserGroup(AnsiString strGroupName);
	virtual void __fastcall SetUserProperty(AnsiString strUserName, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall GetUserProperty(AnsiString strUserName, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall GetUserGroupProperty(AnsiString strGroupName, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall SetUserGroupProperty(AnsiString strGroupName, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall SetObjectAccessRights(AnsiString strObjectName, AnsiString strAccessorName, AnsiString strAllowedRights);
	virtual void __fastcall GetUserNames(Classes::TStringList* oUserNameList);
	virtual void __fastcall GetGroupNames(Classes::TStringList* oGroupNameList);
	virtual void __fastcall GetUsersFromGroup(AnsiString strGroupName, Classes::TStringList* oUserNameList);
	void __fastcall AddProcedure(AnsiString strName, AnsiString strDll, AnsiString strProcName, unsigned ulInvokeOption, AnsiString strInParams, AnsiString strOutParams, AnsiString strComments);
	void __fastcall RemoveProcedure(AnsiString strName);
	__property int ConnectionHandle = {read=FhConnection, nodefault};
	virtual TAdsPermissionTypes __fastcall GetPermissions(AnsiString strGrantee, Word usObjectType, AnsiString strObjectName, AnsiString strParentName, bool bReturnInherited);
	virtual void __fastcall GrantPermissions(Word usObjectType, AnsiString strObjectName, AnsiString strParentName, AnsiString strGrantee, TAdsPermissionTypes Permissions);
	virtual void __fastcall RevokePermissions(Word usObjectType, AnsiString strObjectName, AnsiString strParentName, AnsiString strGrantee, TAdsPermissionTypes Permissions);
	virtual void __fastcall GetLinkProperty(AnsiString strLinkname, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall CreateDDLink(AnsiString strLinkAlias, AnsiString strLinkedDDPath, AnsiString strUserName, AnsiString strPassword, Adscnnct::TAdsLinkOptions Options);
	virtual void __fastcall DropDDLink(AnsiString strLinkedDD, bool bDropGlobal);
	virtual void __fastcall GetDDLinkNames(Classes::TStringList* poLinkNames);
	virtual void __fastcall CreateTrigger(AnsiString strTriggerName, AnsiString strTableName, TAdsTrigEventType EventType, TAdsTrigType TriggerType, TAdsTrigContainerType ContainerType, AnsiString strContainerName, AnsiString strFunctionName, unsigned ulPriority, AnsiString strComments, TAdsTrigOptions Options);
	virtual void __fastcall RemoveTrigger(AnsiString strTriggerName);
	virtual void __fastcall GetTriggerProperty(AnsiString strTriggerName, Word usPropertyID, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall SetTriggerProperty(AnsiString strTriggerName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall GetTriggerNames(Classes::TStringList* poTriggerNames)/* overload */;
	virtual void __fastcall GetTriggerNames(AnsiString strTableName, Classes::TStringList* poTriggerNames)/* overload */;
	virtual void __fastcall GetQualifiedTriggerNames(Classes::TStringList* poTriggerNames)/* overload */;
	virtual void __fastcall GetQualifiedTriggerNames(AnsiString strTableName, Classes::TStringList* poTriggerNames)/* overload */;
	virtual void __fastcall ModifyLink(AnsiString strLinkAlias, AnsiString strLinkedDDPath, AnsiString strUserName, AnsiString strPassword, Adscnnct::TAdsLinkOptions Options);
	virtual void __fastcall SetViewProperty(AnsiString strViewName, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall SetProcedureProperty(AnsiString strProcedureName, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall GetSubscriptionProperty(AnsiString strSubscription, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall SetSubscriptionProperty(AnsiString strSubscription, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall CreateSubscription(AnsiString strSubscriptionName, AnsiString strPublicationName, AnsiString strTarget, AnsiString strUser, AnsiString strPassword, AnsiString strReplicationQueue, bool bForward, AnsiString strComments, TAdsSubscriptionOptions Options);
	virtual void __fastcall DeleteSubscription(AnsiString strSubscription);
	virtual void __fastcall GetSubscriptionNames(Classes::TStringList* poSubscriptionNames);
	virtual void __fastcall GetPublicationProperty(AnsiString strPubliacationName, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall SetPublicationProperty(AnsiString strPubliacationName, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall CreatePublication(AnsiString strPublicationName, AnsiString strComments, TAdsPublicationOptions Options);
	virtual void __fastcall DeletePublication(AnsiString strPublicationName);
	virtual void __fastcall GetPublicationNames(Classes::TStringList* poPublicationNames);
	virtual void __fastcall GetArticleProperty(AnsiString strPublicationName, AnsiString strObjectName, Word usProperty, void * pvProperty, Word &usPropertyLen);
	virtual void __fastcall SetArticleProperty(AnsiString strPubliacationName, AnsiString strObjectName, Word usProperty, void * pvProperty, Word usPropertyLen);
	virtual void __fastcall CreateArticle(AnsiString strPublicationName, AnsiString strObjectName, AnsiString strRowIdentColumns, AnsiString strFilter, TAdsArticleOptions Options);
	virtual void __fastcall DeleteArticle(AnsiString strPublicationName, AnsiString strArticle);
	virtual void __fastcall GetArticleNames(AnsiString strPublicationName, Classes::TStringList* poArticleNames);
	
__published:
	__property AnsiString Password = {read=FstrPassword, write=FstrPassword};
	__property Adsset::TAdsServerTypes AdsServerTypes = {read=FAdsServerTypes, write=SetAdsServerTypes, nodefault};
	__property bool IsConnected = {read=FConnected, write=SetConnected, nodefault};
	__property AnsiString ConnectPath = {read=GetConnectString, write=SetConnectString};
	__property AnsiString AliasName = {read=FstrAliasName, write=SetAliasName};
	__property bool LoginPrompt = {read=FLoginPrompt, write=FLoginPrompt, nodefault};
	__property Adscnnct::TAdsCommunicationType CommunicationType = {read=FAdsCommunicationType, write=FAdsCommunicationType, nodefault};
	__property TAdsDatabaseLoginEvent OnLogin = {read=FOnLogin, write=FOnLogin};
	__property AnsiString UserName = {read=FstrUserName, write=FstrUserName};
};


//-- var, const, procedure ---------------------------------------------------
static const Word ADS_DD_PROPERTY_NOT_AVAIL = 0xffff;
static const Word ADS_DD_MAX_PROPERTY_LEN = 0xfffe;
static const Byte ADS_DD_MAX_OBJECT_NAME_LEN = 0xc8;
static const Shortint ADS_DD_TABLE_OBJECT = 0x1;
static const Shortint ADS_DD_RELATION_OBJECT = 0x2;
static const Shortint ADS_DD_INDEX_FILE_OBJECT = 0x3;
static const Shortint ADS_DD_FIELD_OBJECT = 0x4;
static const Shortint ADS_DD_COLUMN_OBJECT = 0x4;
static const Shortint ADS_DD_INDEX_OBJECT = 0x5;
static const Shortint ADS_DD_VIEW_OBJECT = 0x6;
static const Shortint ADS_DD_VIEW_OR_TABLE_OBJECT = 0x7;
static const Shortint ADS_DD_USER_OBJECT = 0x8;
static const Shortint ADS_DD_USER_GROUP_OBJECT = 0x9;
static const Shortint ADS_DD_PROCEDURE_OBJECT = 0xa;
static const Shortint ADS_DD_DATABASE_OBJECT = 0xb;
static const Shortint ADS_DD_COMMENT = 0x1;
static const Shortint ADS_DD_VERSION = 0x2;
static const Shortint ADS_DD_USER_DEFINED_PROP = 0x3;
static const Shortint ADS_DD_DEFAULT_TABLE_PATH = 0x64;
static const Shortint ADS_DD_ADMIN_PASSWORD = 0x65;
static const Shortint ADS_DD_TEMP_TABLE_PATH = 0x66;
static const Shortint ADS_DD_LOG_IN_REQUIRED = 0x67;
static const Shortint ADS_DD_VERIFY_ACCESS_RIGHTS = 0x68;
static const Byte ADS_DD_TABLE_VALIDATION_EXPR = 0xc8;
static const Byte ADS_DD_TABLE_VALIDATION_MSG = 0xc9;
static const Byte ADS_DD_TABLE_PRIMARY_KEY = 0xca;
static const Byte ADS_DD_TABLE_AUTO_CREATE = 0xcb;
static const Byte ADS_DD_TABLE_TYPE = 0xcc;
static const Byte ADS_DD_TABLE_PATH = 0xcd;
static const Byte ADS_DD_TABLE_FIELD_COUNT = 0xce;
static const Byte ADS_DD_TABLE_RI_GRAPH = 0xcf;
static const Byte ADS_DD_TABLE_OBJ_ID = 0xd0;
static const Byte ADS_DD_TABLE_RI_XY = 0xd1;
static const Byte ADS_DD_TABLE_IS_RI_PARENT = 0xd2;
static const Byte ADS_DD_TABLE_RELATIVE_PATH = 0xd3;
static const Byte ADS_DD_TABLE_CHAR_TYPE = 0xd4;
static const Byte ADS_DD_TABLE_DEFAULT_INDEX = 0xd5;
static const Word ADS_DD_FIELD_DEFAULT_VALUE = 0x12c;
static const Word ADS_DD_FIELD_CAN_NULL = 0x12d;
static const Word ADS_DD_FIELD_MIN_VALUE = 0x12e;
static const Word ADS_DD_FIELD_MAX_VALUE = 0x12f;
static const Word ADS_DD_FIELD_VALIDATION_MSG = 0x130;
static const Word ADS_DD_FIELD_DEFINITION = 0x131;
static const Word ADS_DD_FIELD_TYPE = 0x132;
static const Word ADS_DD_FIELD_LENGTH = 0x133;
static const Word ADS_DD_FIELD_DECIMAL = 0x134;
static const Word ADS_DD_INDEX_FILE_NAME = 0x190;
static const Word ADS_DD_INDEX_EXPRESSION = 0x191;
static const Word ADS_DD_INDEX_CONDITION = 0x192;
static const Word ADS_DD_INDEX_OPTIONS = 0x193;
static const Word ADS_DD_INDEX_KEY_LENGTH = 0x194;
static const Word ADS_DD_INDEX_KEY_TYPE = 0x195;
static const Word ADS_DD_RI_PARENT_GRAPH = 0x1f4;
static const Word ADS_DD_RI_PRIMARY_TABLE = 0x1f5;
static const Word ADS_DD_RI_PRIMARY_INDEX = 0x1f6;
static const Word ADS_DD_RI_FOREIGN_TABLE = 0x1f7;
static const Word ADS_DD_RI_FOREIGN_INDEX = 0x1f8;
static const Word ADS_DD_RI_UPDATERULE = 0x1f9;
static const Word ADS_DD_RI_DELETERULE = 0x1fa;
static const Shortint ADS_DD_RI_CASCADE = 0x1;
static const Shortint ADS_DD_RI_RESTRICT = 0x2;
static const Shortint ADS_DD_RI_SETNULL = 0x3;
static const Shortint ADS_DD_RI_SETDEFAULT = 0x4;
static const Shortint ADS_DD_DFV_UNKNOWN = 0x1;
static const Shortint ADS_DD_DFV_NONE = 0x2;
static const Shortint ADS_DD_DFV_VALUES_STORED = 0x3;
static const Word ADS_DD_USER_GROUP_NAME = 0x258;
static const Word ADS_DD_VIEW_STMT = 0x2bc;
static const Word ADS_DD_VIEW_STMT_LEN = 0x2bd;
static const Word ADS_DD_PROC_INPUT = 0x320;
static const Word ADS_DD_PROC_OUTPUT = 0x321;
static const Word ADS_DD_PROC_DLL_NAME = 0x322;
static const Word ADS_DD_PROC_DLL_FUNCTION_NAME = 0x323;
static const Word ADS_DD_PROC_INVOKE_OPTION = 0x324;
static const Word ADS_DD_TABLES_RIGHTS = 0x3e9;
static const Word ADS_DD_VIEWS_RIGHTS = 0x3ea;
static const Word ADS_DD_PROCS_RIGHTS = 0x3eb;
static const Word ADS_DD_OBJECTS_RIGHTS = 0x3ec;
static const Word ADS_DD_FREE_TABLES_RIGHTS = 0x3ed;
static const Word ADS_DD_USER_PASSWORD = 0x44d;
static const Word ADS_DD_USER_GROUP_MEMBERSHIP = 0x44e;
static const Shortint ADS_NO_VALIDATE = 0x0;
static const Shortint ADS_VALIDATE_NO_SAVE = 0x1;
static const Shortint ADS_VALIDATE_WRITE_FAIL = 0x2;
static const Shortint ADS_VALIDATE_APPEND_FAIL = 0x3;
static const Shortint ADS_VALIDATE_RETURN_ERROR = 0x4;

}	/* namespace Adsdictionary */
using namespace Adsdictionary;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Adsdictionary
