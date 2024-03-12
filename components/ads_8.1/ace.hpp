// CodeGear C++Builder
// Copyright (c) 1995, 2007 by CodeGear
// All rights reserved

// (DO NOT EDIT: machine generated header) 'Ace.pas' rev: 11.00

#ifndef AceHPP
#define AceHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member functions
#pragma pack(push,8)
#include <System.hpp>	// Pascal unit
#include <Sysinit.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Ace
{
//-- type declarations -------------------------------------------------------
typedef char *PAceChar;

typedef char AceChar;

typedef char *PAceBinary;

typedef int __stdcall (*TCallbackFunction)(Word usPercent, int ulCallbackID);

typedef int __stdcall (*TProgressCallback)(Word usPercent);

typedef int __stdcall (*TSQLAbortFunc)(void);

typedef int __stdcall (*TUDFFunc)(void);

typedef char *ADSFIELD;

typedef int ADSHANDLE;

typedef int ADSIndexArray[50];

typedef ADSIndexArray *PADSIndexArray;

typedef int *PADSHANDLE;

typedef double *PDOUBLE;

typedef Word *PWord;

typedef short SIGNED16;

typedef short *PSIGNED16;

typedef Word UNSIGNED16;

typedef Word *PUNSIGNED16;

typedef int SIGNED32;

typedef int *PSIGNED32;

typedef __int64 SIGNED64;

typedef __int64 *PSIGNED64;

typedef unsigned UNSIGNED32;

typedef unsigned *PUNSIGNED32;

typedef Byte SIGNED8;

typedef Byte UNSIGNED8;

typedef char * *pPChar;

struct ADS_MGMT_COMM_STATS
{
	
public:
	double dPercentCheckSums;
	unsigned ulTotalPackets;
	unsigned ulRcvPktOutOfSeq;
	unsigned ulNotLoggedIn;
	unsigned ulRcvReqOutOfSeq;
	unsigned ulCheckSumFailures;
	unsigned ulDisconnectedUsers;
	unsigned ulPartialConnects;
	unsigned ulInvalidPackets;
	unsigned ulRecvFromErrors;
	unsigned ulSendToErrors;
} ;

typedef ADS_MGMT_COMM_STATS *pADS_MGMT_COMM_STATS;

#pragma pack(push,4)
struct ADS_MGMT_CONFIG_PARAMS
{
	
public:
	unsigned ulNumConnections;
	unsigned ulNumWorkAreas;
	unsigned ulNumTables;
	unsigned ulNumIndexes;
	unsigned ulNumLocks;
	unsigned ulUserBufferSize;
	unsigned ulStatDumpInterval;
	unsigned ulErrorLogMax;
	unsigned ulNumTPSHeaderElems;
	unsigned ulNumTPSVisibilityElems;
	unsigned ulNumTPSMemoTransElems;
	Word usNumRcvECBs;
	Word usNumSendECBs;
	Word usNumBurstPackets;
	Word usNumWorkerThreads;
	unsigned ulSortBuffSize;
	char aucErrorLog[256];
	char aucSemaphore[256];
	char aucTransaction[256];
	Byte ucReserved3;
	Byte ucReserved4;
	Word usSendIPPort;
	Word usReceiveIPPort;
	Byte ucUseIPProtocol;
	Byte ucFlushEveryUpdate;
	unsigned ulGhostTimeout;
	unsigned ulFlushFrequency;
	unsigned ulKeepAliveTimeOut;
	Byte ucDisplayNWLoginNames;
	Byte ucUseSemaphoreFiles;
	Byte ucUseDynamicAOFs;
	Byte ucUseInternet;
	Word usInternetPort;
	Word usMaxConnFailures;
	unsigned ulInternetKeepAlive;
	Word usCompressionLevel;
	Word usReserved5;
	unsigned ulReserved6;
} ;
#pragma pack(pop)

typedef ADS_MGMT_CONFIG_PARAMS *pADS_MGMT_CONFIG_PARAMS;

#pragma pack(push,4)
struct ADS_MGMT_CONFIG_MEMORY
{
	
public:
	unsigned ulTotalConfigMem;
	unsigned ulConnectionMem;
	unsigned ulWorkAreaMem;
	unsigned ulTableMem;
	unsigned ulIndexMem;
	unsigned ulLockMem;
	unsigned ulUserBufferMem;
	unsigned ulTPSHeaderElemMem;
	unsigned ulTPSVisibilityElemMem;
	unsigned ulTPSMemoTransElemMem;
	unsigned ulRcvEcbMem;
	unsigned ulSendEcbMem;
	unsigned ulWorkerThreadMem;
} ;
#pragma pack(pop)

typedef ADS_MGMT_CONFIG_MEMORY *pADS_MGMT_CONFIG_MEMORY;

#pragma pack(push,4)
struct ADS_MGMT_INSTALL_INFO
{
	
public:
	unsigned ulUserOption;
	char aucRegisteredOwner[36];
	char aucVersionStr[16];
	char aucInstallDate[16];
	char aucOemCharName[16];
	char aucAnsiCharName[16];
	char aucEvalExpireDate[16];
	char aucSerialNumber[16];
} ;
#pragma pack(pop)

typedef ADS_MGMT_INSTALL_INFO *pADS_MGMT_INSTALL_INFO;

#pragma pack(push,4)
struct ADS_MGMT_USAGE_INFO
{
	
public:
	unsigned ulInUse;
	unsigned ulMaxUsed;
	unsigned ulRejected;
} ;
#pragma pack(pop)

typedef ADS_MGMT_USAGE_INFO *pADS_MGMT_USAGE_INFO;

#pragma pack(push,2)
struct ADS_MGMT_UPTIME_INFO
{
	
public:
	Word usDays;
	Word usHours;
	Word usMinutes;
	Word usSeconds;
} ;
#pragma pack(pop)

typedef ADS_MGMT_UPTIME_INFO *pADS_MGMT_UPTIME_INFO;

#pragma pack(push,4)
struct ADS_MGMT_ACTIVITY_INFO
{
	
public:
	unsigned ulOperations;
	unsigned ulLoggedErrors;
	ADS_MGMT_UPTIME_INFO stUpTime;
	ADS_MGMT_USAGE_INFO stUsers;
	ADS_MGMT_USAGE_INFO stConnections;
	ADS_MGMT_USAGE_INFO stWorkAreas;
	ADS_MGMT_USAGE_INFO stTables;
	ADS_MGMT_USAGE_INFO stIndexes;
	ADS_MGMT_USAGE_INFO stLocks;
	ADS_MGMT_USAGE_INFO stTpsHeaderElems;
	ADS_MGMT_USAGE_INFO stTpsVisElems;
	ADS_MGMT_USAGE_INFO stTpsMemoElems;
	ADS_MGMT_USAGE_INFO stWorkerThreads;
} ;
#pragma pack(pop)

typedef ADS_MGMT_ACTIVITY_INFO *pADS_MGMT_ACTIVITY_INFO;

#pragma pack(push,2)
struct ADS_MGMT_USER_INFO
{
	
public:
	char aucUserName[50];
	Word usConnNumber;
	char aucDictionaryName[50];
	char aucAddress[30];
	char aucOSUserLoginName[50];
	char aucTSAddress[30];
} ;
#pragma pack(pop)

typedef ADS_MGMT_USER_INFO *pADS_MGMT_USER_INFO;

typedef ADS_MGMT_USER_INFO ADSMgUserArray[200];

typedef ADSMgUserArray *PADSMgUserArray;

#pragma pack(push,2)
struct ADS_MGMT_TABLE_INFO
{
	
public:
	char aucTableName[260];
	Word usLockType;
} ;
#pragma pack(pop)

typedef ADS_MGMT_TABLE_INFO *pADS_MGMT_TABLE_INFO;

typedef ADS_MGMT_TABLE_INFO ADSMgTableArray[200];

typedef ADSMgTableArray *PADSMgTableArray;

#pragma pack(push,1)
struct ADS_MGMT_INDEX_INFO
{
	
public:
	char aucIndexName[260];
} ;
#pragma pack(pop)

typedef ADS_MGMT_INDEX_INFO *pADS_MGMT_INDEX_INFO;

typedef ADS_MGMT_INDEX_INFO ADSMgIndexArray[200];

typedef ADSMgIndexArray *PADSMgIndexArray;

#pragma pack(push,4)
struct ADS_MGMT_RECORD_INFO
{
	
public:
	unsigned ulRecordNumber;
} ;
#pragma pack(pop)

typedef ADS_MGMT_RECORD_INFO *pADS_MGMT_RECORD_INFO;

typedef ADS_MGMT_RECORD_INFO ADSMgLocksArray[400];

typedef ADSMgLocksArray *PADSMgLocksArray;

#pragma pack(push,4)
struct ADS_MGMT_THREAD_ACTIVITY
{
	
public:
	unsigned ulThreadNumber;
	Word usOpCode;
	char aucUserName[50];
	Word usConnNumber;
	Word usReserved1;
	char aucOSUserLoginName[50];
} ;
#pragma pack(pop)

typedef ADS_MGMT_THREAD_ACTIVITY *pADS_MGMT_THREAD_ACTIVITY;

typedef ADS_MGMT_THREAD_ACTIVITY ADSMgThreadsArray[50];

typedef ADSMgThreadsArray *PADSMgThreadsArray;

typedef unsigned __stdcall (*TStoredProcedure)(unsigned ulConnectionID, char * pucUserName, char * pucPassword, char * pucProcName, unsigned ulRecNum, char * pucTable1, char * pucTable2);

typedef unsigned __stdcall (*TStartupProcedure)(unsigned ulConnectionID, char * pucUserName, char * pucPassword);

typedef unsigned __stdcall (*TShutdownProcedure)(unsigned ulConnectionID, char * pucUserName, char * pucPassword);

#pragma pack(push,2)
struct ADD_FIELD_DESC
{
	
public:
	Word usFieldType;
	Word usFieldLength;
	Word usFieldDecimal;
} ;
#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
#define ACE_LIB "ACE32.DLL"
static const char ADS_PATH_DELIMITER = '\x5c';
static const Shortint ADS_FALSE = 0x0;
static const Shortint ADS_TRUE = 0x1;
static const Shortint ADS_DEFAULT = 0x0;
static const Shortint ADS_ANSI = 0x1;
static const Shortint ADS_OEM = 0x2;
static const Shortint ADS_CHECKRIGHTS = 0x1;
static const Shortint ADS_IGNORERIGHTS = 0x2;
static const Shortint ADS_INC_USERCOUNT = 0x1;
static const Shortint ADS_STORED_PROC_CONN = 0x2;
static const Shortint ADS_COMPRESS_ALWAYS = 0x4;
static const Shortint ADS_COMPRESS_NEVER = 0x8;
static const Shortint ADS_COMPRESS_INTERNET = 0xc;
static const Shortint ADS_REPLICATION_CONNECTION = 0x10;
static const Shortint ADS_UDP_IP_CONNECTION = 0x20;
static const Shortint ADS_IPX_CONNECTION = 0x40;
static const Byte ADS_TCP_IP_CONNECTION = 0x80;
static const Word ADS_TCP_IP_V6_CONNECTION = 0x100;
static const Shortint ADS_EXCLUSIVE = 0x1;
static const Shortint ADS_READONLY = 0x2;
static const Shortint ADS_SHARED = 0x4;
static const Shortint ADS_CLIPPER_MEMOS = 0x8;
static const Shortint ADS_TABLE_PERM_READ = 0x10;
static const Shortint ADS_TABLE_PERM_UPDATE = 0x20;
static const Shortint ADS_TABLE_PERM_INSERT = 0x40;
static const Byte ADS_TABLE_PERM_DELETE = 0x80;
static const Word ADS_REINDEX_ON_COLLATION_MISMATCH = 0x100;
static const Word ADS_IGNORE_COLLATION_MISMATCH = 0x200;
static const Word ADS_FREE_TABLE = 0x1000;
static const Word ADS_TEMP_TABLE = 0x2000;
static const Word ADS_DICTIONARY_BOUND_TABLE = 0x4000;
static const Shortint ADS_ASCENDING = 0x0;
static const Shortint ADS_UNIQUE = 0x1;
static const Shortint ADS_COMPOUND = 0x2;
static const Shortint ADS_CUSTOM = 0x4;
static const Shortint ADS_DESCENDING = 0x8;
static const Shortint ADS_USER_DEFINED = 0x10;
static const Word ADS_NOT_AUTO_OPEN = 0x400;
static const Shortint ADS_FTS_INDEX = 0x20;
static const Shortint ADS_FTS_FIXED = 0x40;
static const Byte ADS_FTS_CASE_SENSITIVE = 0x80;
static const Word ADS_FTS_KEEP_SCORE = 0x100;
static const Word ADS_FTS_PROTECT_NUMBERS = 0x200;
static const Shortint ADS_NONE = 0x0;
static const Shortint ADS_LTRIM = 0x1;
static const Shortint ADS_RTRIM = 0x2;
static const Shortint ADS_TRIM = 0x3;
static const Shortint ADS_COMPATIBLE_LOCKING = 0x0;
static const Shortint ADS_PROPRIETARY_LOCKING = 0x1;
static const Shortint ADS_SOFTSEEK = 0x1;
static const Shortint ADS_HARDSEEK = 0x2;
static const Shortint ADS_SEEKGT = 0x4;
static const Shortint ADS_RAWKEY = 0x1;
static const Shortint ADS_STRINGKEY = 0x2;
static const Shortint ADS_DOUBLEKEY = 0x4;
static const Shortint ADS_TOP = 0x1;
static const Shortint ADS_BOTTOM = 0x2;
static const Shortint ADS_RESPECTFILTERS = 0x1;
static const Shortint ADS_IGNOREFILTERS = 0x2;
static const Shortint ADS_RESPECTSCOPES = 0x3;
static const Shortint ADS_REFRESHCOUNT = 0x4;
static const Shortint ADS_LOCAL_SERVER = 0x1;
static const Shortint ADS_REMOTE_SERVER = 0x2;
static const Shortint ADS_AIS_SERVER = 0x4;
static const Shortint ADS_CONNECTION = 0x1;
static const Shortint ADS_TABLE = 0x2;
static const Shortint ADS_INDEX_ORDER = 0x3;
static const Shortint ADS_STATEMENT = 0x4;
static const Shortint ADS_CURSOR = 0x5;
static const Shortint ADS_DATABASE_CONNECTION = 0x6;
static const Shortint ADS_DICTIONARY_CONNECTION = 0x6;
static const Shortint ADS_SYS_ADMIN_CONNECTION = 0x7;
static const Shortint ADS_DICTIONARY = 0x7;
static const Shortint ADS_FTS_INDEX_ORDER = 0x8;
static const Shortint ADS_CURSOR_READONLY = 0x1;
static const Shortint ADS_CURSOR_READWRITE = 0x2;
static const Shortint ADS_CONSTRAIN = 0x1;
static const Shortint ADS_NO_CONSTRAIN = 0x2;
static const Shortint ADS_NO_OPTIMIZATION = 0x1;
static const Shortint ADS_READ_ALL_COLUMNS = 0x1;
static const Shortint ADS_READ_SELECT_COLUMNS = 0x2;
static const Shortint ADS_NO_VALIDATE = 0x0;
static const Shortint ADS_VALIDATE_NO_SAVE = 0x1;
static const Shortint ADS_VALIDATE_WRITE_FAIL = 0x2;
static const Shortint ADS_VALIDATE_APPEND_FAIL = 0x3;
static const Shortint ADS_VALIDATE_RETURN_ERROR = 0x4;
static const Shortint ADS_CMP_LESS = -1;
static const Shortint ADS_CMP_EQUAL = 0x0;
static const Shortint ADS_CMP_GREATER = 0x1;
static const Shortint ADS_CONNECTIONPROP_USERNAME = 0x0;
static const Shortint ADS_CONNECTIONPROP_PASSWORD = 0x1;
static const Shortint ADS_CRC_LOCALLY = 0x1;
static const Shortint ADS_CRC_IGNOREMEMOPAGES = 0x2;
static const Shortint AE_SUCCESS = 0x0;
static const Word AE_ALLOCATION_FAILED = 0x1389;
static const Word AE_COMM_MISMATCH = 0x138a;
static const Word AE_DATA_TOO_LONG = 0x138b;
static const Word AE_FILE_NOT_FOUND = 0x138c;
static const Word AE_INSUFFICIENT_BUFFER = 0x138d;
static const Word AE_INVALID_BOOKMARK = 0x138e;
static const Word AE_INVALID_CALLBACK = 0x138f;
static const Word AE_INVALID_CENTURY = 0x1390;
static const Word AE_INVALID_DATEFORMAT = 0x1391;
static const Word AE_INVALID_DECIMALS = 0x1392;
static const Word AE_INVALID_EXPRESSION = 0x1393;
static const Word AE_INVALID_FIELDDEF = 0x1394;
static const Word AE_INVALID_FILTER_OPTION = 0x1395;
static const Word AE_INVALID_INDEX_HANDLE = 0x1396;
static const Word AE_INVALID_INDEX_NAME = 0x1397;
static const Word AE_INVALID_INDEX_ORDER_NAME = 0x1398;
static const Word AE_INVALID_INDEX_TYPE = 0x1399;
static const Word AE_INVALID_HANDLE = 0x139a;
static const Word AE_INVALID_OPTION = 0x139b;
static const Word AE_INVALID_PATH = 0x139c;
static const Word AE_INVALID_POINTER = 0x139d;
static const Word AE_INVALID_RECORD_NUMBER = 0x139e;
static const Word AE_INVALID_TABLE_HANDLE = 0x139f;
static const Word AE_INVALID_CONNECTION_HANDLE = 0x13a0;
static const Word AE_INVALID_TABLETYPE = 0x13a1;
static const Word AE_INVALID_WORKAREA = 0x13a2;
static const Word AE_INVALID_CHARSETTYPE = 0x13a3;
static const Word AE_INVALID_LOCKTYPE = 0x13a4;
static const Word AE_INVALID_RIGHTSOPTION = 0x13a5;
static const Word AE_INVALID_FIELDNUMBER = 0x13a6;
static const Word AE_INVALID_KEY_LENGTH = 0x13a7;
static const Word AE_INVALID_FIELDNAME = 0x13a8;
static const Word AE_NO_DRIVE_CONNECTION = 0x13a9;
static const Word AE_FILE_NOT_ON_SERVER = 0x13aa;
static const Word AE_LOCK_FAILED = 0x13ab;
static const Word AE_NO_CONNECTION = 0x13ac;
static const Word AE_NO_FILTER = 0x13ad;
static const Word AE_NO_SCOPE = 0x13ae;
static const Word AE_NO_TABLE = 0x13af;
static const Word AE_NO_WORKAREA = 0x13b0;
static const Word AE_NOT_FOUND = 0x13b1;
static const Word AE_NOT_IMPLEMENTED = 0x13b2;
static const Word AE_MAX_THREADS_EXCEEDED = 0x13b3;
static const Word AE_START_THREAD_FAIL = 0x13b4;
static const Word AE_TOO_MANY_INDEXES = 0x13b5;
static const Word AE_TOO_MANY_TAGS = 0x13b6;
static const Word AE_TRANS_OUT_OF_SEQUENCE = 0x13b7;
static const Word AE_UNKNOWN_ERRCODE = 0x13b8;
static const Word AE_UNSUPPORTED_LANGUAGE = 0x13b9;
static const Word AE_NAME_TOO_LONG = 0x13ba;
static const Word AE_DUPLICATE_ALIAS = 0x13bb;
static const Word AE_TABLE_CLOSED_IN_TRANSACTION = 0x13bd;
static const Word AE_PERMISSION_DENIED = 0x13be;
static const Word AE_STRING_NOT_FOUND = 0x13bf;
static const Word AE_UNKNOWN_CHAR_SET = 0x13c0;
static const Word AE_INVALID_OEM_CHAR_FILE = 0x13c1;
static const Word AE_INVALID_MEMO_BLOCK_SIZE = 0x13c2;
static const Word AE_NO_FILE_FOUND = 0x13c3;
static const Word AE_NO_INF_LOCK = 0x13c4;
static const Word AE_INF_FILE_ERROR = 0x13c5;
static const Word AE_RECORD_NOT_LOCKED = 0x13c6;
static const Word AE_ILLEGAL_COMMAND_DURING_TRANS = 0x13c7;
static const Word AE_TABLE_NOT_SHARED = 0x13c8;
static const Word AE_INDEX_ALREADY_OPEN = 0x13c9;
static const Word AE_INVALID_FIELD_TYPE = 0x13ca;
static const Word AE_TABLE_NOT_EXCLUSIVE = 0x13cb;
static const Word AE_NO_CURRENT_RECORD = 0x13cc;
static const Word AE_PRECISION_LOST = 0x13cd;
static const Word AE_INVALID_DATA_TYPE = 0x13ce;
static const Word AE_DATA_TRUNCATED = 0x13cf;
static const Word AE_TABLE_READONLY = 0x13d0;
static const Word AE_INVALID_RECORD_LENGTH = 0x13d1;
static const Word AE_NO_ERROR_MESSAGE = 0x13d2;
static const Word AE_INDEX_SHARED = 0x13d3;
static const Word AE_INDEX_EXISTS = 0x13d4;
static const Word AE_CYCLIC_RELATION = 0x13d5;
static const Word AE_INVALID_RELATION = 0x13d6;
static const Word AE_INVALID_DAY = 0x13d7;
static const Word AE_INVALID_MONTH = 0x13d8;
static const Word AE_CORRUPT_TABLE = 0x13d9;
static const Word AE_INVALID_BINARY_OFFSET = 0x13da;
static const Word AE_BINARY_FILE_ERROR = 0x13db;
static const Word AE_INVALID_DELETED_BYTE_VALUE = 0x13dc;
static const Word AE_NO_PENDING_UPDATE = 0x13dd;
static const Word AE_PENDING_UPDATE = 0x13de;
static const Word AE_TABLE_NOT_LOCKED = 0x13df;
static const Word AE_CORRUPT_INDEX = 0x13e0;
static const Word AE_AUTOOPEN_INDEX = 0x13e1;
static const Word AE_SAME_TABLE = 0x13e2;
static const Word AE_INVALID_IMAGE = 0x13e3;
static const Word AE_COLLATION_SEQUENCE_MISMATCH = 0x13e4;
static const Word AE_INVALID_INDEX_ORDER = 0x13e5;
static const Word AE_TABLE_CACHED = 0x13e6;
static const Word AE_INVALID_DATE = 0x13e7;
static const Word AE_ENCRYPTION_NOT_ENABLED = 0x13e8;
static const Word AE_INVALID_PASSWORD = 0x13e9;
static const Word AE_TABLE_ENCRYPTED = 0x13ea;
static const Word AE_SERVER_MISMATCH = 0x13eb;
static const Word AE_INVALID_USERNAME = 0x13ec;
static const Word AE_INVALID_VALUE = 0x13ed;
static const Word AE_INVALID_CONTINUE = 0x13ee;
static const Word AE_UNRECOGNIZED_VERSION = 0x13ef;
static const Word AE_RECORD_ENCRYPTED = 0x13f0;
static const Word AE_UNRECOGNIZED_ENCRYPTION = 0x13f1;
static const Word AE_INVALID_SQLSTATEMENT_HANDLE = 0x13f2;
static const Word AE_INVALID_SQLCURSOR_HANDLE = 0x13f3;
static const Word AE_NOT_PREPARED = 0x13f4;
static const Word AE_CURSOR_NOT_CLOSED = 0x13f5;
static const Word AE_INVALID_SQL_PARAM_NUMBER = 0x13f6;
static const Word AE_INVALID_SQL_PARAM_NAME = 0x13f7;
static const Word AE_INVALID_COLUMN_NUMBER = 0x13f8;
static const Word AE_INVALID_COLUMN_NAME = 0x13f9;
static const Word AE_INVALID_READONLY_OPTION = 0x13fa;
static const Word AE_IS_CURSOR_HANDLE = 0x13fb;
static const Word AE_INDEX_EXPR_NOT_FOUND = 0x13fc;
static const Word AE_NOT_DML = 0x13fd;
static const Word AE_INVALID_CONSTRAIN_TYPE = 0x13fe;
static const Word AE_INVALID_CURSORHANDLE = 0x13ff;
static const Word AE_OBSOLETE_FUNCTION = 0x1400;
static const Word AE_TADSDATASET_GENERAL = 0x1401;
static const Word AE_UDF_OVERWROTE_BUFFER = 0x1402;
static const Word AE_INDEX_UDF_NOT_SET = 0x1403;
static const Word AE_CONCURRENT_PROBLEM = 0x1404;
static const Word AE_INVALID_DICTIONARY_HANDLE = 0x1405;
static const Word AE_INVALID_PROPERTY_ID = 0x1406;
static const Word AE_INVALID_PROPERTY = 0x1407;
static const Word AE_DICTIONARY_ALREADY_EXISTS = 0x1408;
static const Word AE_INVALID_FIND_HANDLE = 0x1409;
static const Word AE_DD_REQUEST_NOT_COMPLETED = 0x140a;
static const Word AE_INVALID_OBJECT_ID = 0x140b;
static const Word AE_INVALID_OBJECT_NAME = 0x140c;
static const Word AE_INVALID_PROPERTY_LENGTH = 0x140d;
static const Word AE_INVALID_KEY_OPTIONS = 0x140e;
static const Word AE_CONSTRAINT_VALIDATION_ERROR = 0x140f;
static const Word AE_INVALID_OBJECT_TYPE = 0x1410;
static const Word AE_NO_OBJECT_FOUND = 0x1411;
static const Word AE_PROPERTY_NOT_SET = 0x1412;
static const Word AE_NO_PRIMARY_KEY_EXISTS = 0x1413;
static const Word AE_LOCAL_CONN_DISABLED = 0x1414;
static const Word AE_RI_RESTRICT = 0x1415;
static const Word AE_RI_CASCADE = 0x1416;
static const Word AE_RI_FAILED = 0x1417;
static const Word AE_RI_CORRUPTED = 0x1418;
static const Word AE_RI_UNDO_FAILED = 0x1419;
static const Word AE_RI_RULE_EXISTS = 0x141a;
static const Word AE_COLUMN_CANNOT_BE_NULL = 0x141b;
static const Word AE_MIN_CONSTRAINT_VIOLATION = 0x141c;
static const Word AE_MAX_CONSTRAINT_VIOLATION = 0x141d;
static const Word AE_RECORD_CONSTRAINT_VIOLATION = 0x141e;
static const Word AE_CANNOT_DELETE_TEMP_INDEX = 0x141f;
static const Word AE_RESTRUCTURE_FAILED = 0x1420;
static const Word AE_INVALID_STATEMENT = 0x1421;
static const Word AE_STORED_PROCEDURE_FAILED = 0x1422;
static const Word AE_INVALID_DICTIONARY_FILE = 0x1423;
static const Word AE_NOT_MEMBER_OF_GROUP = 0x1424;
static const Word AE_ALREADY_MEMBER_OF_GROUP = 0x1425;
static const Word AE_INVALID_OBJECT_RIGHT = 0x1426;
static const Word AE_INVALID_OBJECT_PERMISSION = 0x1426;
static const Word AE_CANNOT_OPEN_DATABASE_TABLE = 0x1427;
static const Word AE_INVALID_CONSTRAINT = 0x1428;
static const Word AE_NOT_ADMINISTRATOR = 0x1429;
static const Word AE_NO_TABLE_ENCRYPTION_PASSWORD = 0x142a;
static const Word AE_TABLE_NOT_ENCRYPTED = 0x142b;
static const Word AE_INVALID_ENCRYPTION_VERSION = 0x142c;
static const Word AE_NO_STORED_PROC_EXEC_RIGHTS = 0x142d;
static const Word AE_DD_UNSUPPORTED_DEPLOYMENT = 0x142e;
static const Word AE_INFO_AUTO_CREATION_OCCURRED = 0x1430;
static const Word AE_INFO_COPY_MADE_BY_CLIENT = 0x1431;
static const Word AE_DATABASE_REQUIRE_NEW_SERVER = 0x1432;
static const Word AE_COLUMN_PERMISSION_DENIED = 0x1433;
static const Word AE_DATABASE_REQUIRE_NEW_CLIENT = 0x1434;
static const Word AE_INVALID_LINK_NUMBER = 0x1435;
static const Word AE_LINK_ACTIVATION_FAILED = 0x1436;
static const Word AE_INDEX_COLLATION_MISMATCH = 0x1437;
static const Word AE_ILLEGAL_USER_OPERATION = 0x1438;
static const Word AE_TRIGGER_FAILED = 0x1439;
static const Word AE_NO_ASA_FUNCTION_FOUND = 0x143a;
static const Word AE_VALUE_OVERFLOW = 0x143b;
static const Word AE_UNRECOGNIZED_FTS_VERSION = 0x143c;
static const Word AE_TRIG_CREATION_FAILED = 0x143d;
static const Word AE_MEMTABLE_SIZE_EXCEEDED = 0x143e;
static const Word AE_OUTDATED_CLIENT_VERSION = 0x143f;
static const Word AE_FREE_TABLE = 0x1440;
static const Word AE_LOCAL_CONN_RESTRICTED = 0x1441;
static const Word AE_OLD_RECORD = 0x1442;
static const Word AE_QUERY_NOT_ACTIVE = 0x1443;
static const Word AE_KEY_EXCEEDS_PAGE_SIZE = 0x1444;
static const Word AE_TABLE_FOUND = 0x1445;
static const Word AE_TABLE_NOT_FOUND = 0x1446;
static const Word AE_LOCK_OBJECT = 0x1447;
static const Word AE_INVALID_REPLICATION_IDENT = 0x1448;
static const Word AE_ILLEGAL_COMMAND_DURING_BACKUP = 0x1449;
static const Word AE_NO_MEMO_FILE = 0x144a;
static const Word AE_SUBSCRIPTION_QUEUE_NOT_EMPTY = 0x144b;
static const Word AE_UNABLE_TO_DISABLE_TRIGGERS = 0x144c;
static const Word AE_UNABLE_TO_ENABLE_TRIGGERS = 0x144d;
static const Word AE_BACKUP = 0x144e;
static const Word AE_FREETABLEFAILED = 0x144f;
static const Word AE_BLURRY_SNAPSHOT = 0x1450;
static const Word AE_INVALID_VERTICAL_FILTER = 0x1451;
static const Shortint ADS_DATABASE_TABLE = 0x0;
static const Shortint ADS_NTX = 0x1;
static const Shortint ADS_CDX = 0x2;
static const Shortint ADS_ADT = 0x3;
static const Shortint ADS_BASENAME = 0x1;
static const Shortint ADS_BASENAMEANDEXT = 0x2;
static const Shortint ADS_FULLPATHNAME = 0x3;
static const Shortint ADS_DATADICTIONARY_NAME = 0x4;
static const Shortint ADS_TABLE_OPEN_NAME = 0x5;
static const Shortint ADS_OPTIMIZED_FULL = 0x1;
static const Shortint ADS_OPTIMIZED_PART = 0x2;
static const Shortint ADS_OPTIMIZED_NONE = 0x3;
static const Shortint ADS_DYNAMIC_AOF = 0x0;
static const Shortint ADS_RESOLVE_IMMEDIATE = 0x1;
static const Shortint ADS_RESOLVE_DYNAMIC = 0x2;
static const Shortint ADS_KEYSET_AOF = 0x4;
static const Shortint ADS_FIXED_AOF = 0x8;
static const Shortint ADS_AOF_ADD_RECORD = 0x1;
static const Shortint ADS_AOF_REMOVE_RECORD = 0x2;
static const Shortint ADS_AOF_TOGGLE_RECORD = 0x3;
static const Shortint ADS_STORED_PROC = 0x1;
static const Shortint ADS_COMSTORED_PROC = 0x2;
static const Shortint ADS_SCRIPT_PROC = 0x4;
static const Shortint ADS_MAX_DATEMASK = 0xc;
static const Word ADS_MAX_ERROR_LEN = 0x258;
static const Word ADS_MAX_INDEX_EXPR_LEN = 0x1fe;
static const Word ADS_MAX_KEY_LENGTH = 0xff2;
static const Byte ADS_MAX_FIELD_NAME = 0x80;
static const Shortint ADS_MAX_DBF_FIELD_NAME = 0xa;
static const Shortint ADS_MAX_INDEXES = 0xf;
static const Word ADS_MAX_PATH = 0x104;
static const Byte ADS_MAX_TABLE_NAME = 0xff;
static const Byte ADS_MAX_TAG_NAME = 0x80;
static const Shortint ADS_MAX_TAGS = 0x32;
static const Byte ADS_MAX_OBJECT_NAME = 0xc8;
static const Word ADS_MAX_TABLE_AND_PATH = 0x203;
static const Word ADS_MIN_ADI_PAGESIZE = 0x200;
static const Word ADS_MAX_ADI_PAGESIZE = 0x2000;
static const Shortint ADS_TYPE_UNKNOWN = 0x0;
static const Shortint ADS_LOGICAL = 0x1;
static const Shortint ADS_NUMERIC = 0x2;
static const Shortint ADS_DATE = 0x3;
static const Shortint ADS_STRING = 0x4;
static const Shortint ADS_MEMO = 0x5;
static const Shortint ADS_BINARY = 0x6;
static const Shortint ADS_IMAGE = 0x7;
static const Shortint ADS_VARCHAR = 0x8;
static const Shortint ADS_COMPACTDATE = 0x9;
static const Shortint ADS_DOUBLE = 0xa;
static const Shortint ADS_INTEGER = 0xb;
static const Shortint ADS_SHORTINT = 0xc;
static const Shortint ADS_TIME = 0xd;
static const Shortint ADS_TIMESTAMP = 0xe;
static const Shortint ADS_AUTOINC = 0xf;
static const Shortint ADS_RAW = 0x10;
static const Shortint ADS_CURDOUBLE = 0x11;
static const Shortint ADS_MONEY = 0x12;
static const Shortint ADS_LONGLONG = 0x13;
static const Shortint ADS_CISTRING = 0x14;
static const Shortint ADS_ROWVERSION = 0x15;
static const Shortint ADS_MODTIME = 0x16;
static const Shortint ADS_MAX_FIELD_TYPE = 0x17;
static const Shortint ADS_INDEX_UDF = 0x1;
static const Word ADS_MAX_CFG_PATH = 0x100;
static const Shortint ADS_MGMT_NETWARE_SERVER = 0x1;
static const Shortint ADS_MGMT_NETWARE4_OR_OLDER_SERVER = 0x1;
static const Shortint ADS_MGMT_NT_SERVER = 0x2;
static const Shortint ADS_MGMT_LOCAL_SERVER = 0x3;
static const Shortint ADS_MGMT_WIN9X_SERVER = 0x4;
static const Shortint ADS_MGMT_NETWARE5_OR_NEWER_SERVER = 0x5;
static const Shortint ADS_MGMT_LINUX_SERVER = 0x6;
static const Shortint ADS_MGMT_NO_LOCK = 0x1;
static const Shortint ADS_MGMT_RECORD_LOCK = 0x2;
static const Shortint ADS_MGMT_FILE_LOCK = 0x3;
static const Shortint ADS_REG_OWNER_LEN = 0x24;
static const Shortint ADS_REVISION_LEN = 0x10;
static const Shortint ADS_INST_DATE_LEN = 0x10;
static const Shortint ADS_OEM_CHAR_NAME_LEN = 0x10;
static const Shortint ADS_ANSI_CHAR_NAME_LEN = 0x10;
static const Shortint ADS_SERIAL_NUM_LEN = 0x10;
static const Word ADS_MGMT_MAX_PATH = 0x104;
static const Shortint ADS_MGMT_PROPRIETARY_LOCKING = 0x1;
static const Shortint ADS_MGMT_CDX_LOCKING = 0x2;
static const Shortint ADS_MGMT_NTX_LOCKING = 0x3;
static const Shortint ADS_MGMT_ADT_LOCKING = 0x4;
static const Shortint ADS_MGMT_COMIX_LOCKING = 0x5;
static const Shortint ADS_MAX_USER_NAME = 0x32;
static const Shortint ADS_MAX_ADDRESS_SIZE = 0x1e;
static const Word ADS_LOCK_ARRAY_SIZE = 0x190;
static const Shortint ADS_THREAD_ARRAY_SIZE = 0x32;
static const Byte ADS_TABLE_ARRAY_SIZE = 0xc8;
static const Byte ADS_INDEX_ARRAY_SIZE = 0xc8;
static const Byte ADS_USER_ARRAY_SIZE = 0xc8;
static const Word ADS_DD_PROPERTY_NOT_AVAIL = 0xffff;
static const Word ADS_DD_MAX_PROPERTY_LEN = 0xfffe;
static const Byte ADS_DD_MAX_OBJECT_NAME_LEN = 0xc8;
static const Word ADS_DD_MAX_LINK_INFO_SIZE = 0x297;
static const Shortint ADS_DD_UNKNOWN_OBJECT = 0x0;
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
static const Shortint ADS_DD_LINK_OBJECT = 0xc;
static const Shortint ADS_DD_TABLE_VIEW_OR_LINK_OBJECT = 0xd;
static const Shortint ADS_DD_TRIGGER_OBJECT = 0xe;
static const Shortint ADS_DD_PUBLICATION_OBJECT = 0xf;
static const Shortint ADS_DD_ARTICLE_OBJECT = 0x10;
static const Shortint ADS_DD_SUBSCRIPTION_OBJECT = 0x11;
static const Shortint ADS_DD_FUNCTION_OBJECT = 0x12;
static const Shortint ADS_DD_PACKAGE_OBJECT = 0x13;
static const Shortint ADS_DD_QUALIFIED_TRIGGER_OBJ = 0x14;
static const Shortint ADS_DD_COMMENT = 0x1;
static const Shortint ADS_DD_VERSION = 0x2;
static const Shortint ADS_DD_USER_DEFINED_PROP = 0x3;
static const Shortint ADS_DD_OBJECT_NAME = 0x4;
static const Shortint ADS_DD_TRIGGERS_DISABLED = 0x5;
static const Shortint ADS_DD_OBJECT_ID = 0x6;
static const Shortint ADS_DD_OPTIONS = 0x7;
static const Shortint ADS_DD_DEFAULT_TABLE_PATH = 0x64;
static const Shortint ADS_DD_ADMIN_PASSWORD = 0x65;
static const Shortint ADS_DD_TEMP_TABLE_PATH = 0x66;
static const Shortint ADS_DD_LOG_IN_REQUIRED = 0x67;
static const Shortint ADS_DD_VERIFY_ACCESS_RIGHTS = 0x68;
static const Shortint ADS_DD_ENCRYPT_TABLE_PASSWORD = 0x69;
static const Shortint ADS_DD_ENCRYPT_NEW_TABLE = 0x6a;
static const Shortint ADS_DD_ENABLE_INTERNET = 0x6b;
static const Shortint ADS_DD_INTERNET_SECURITY_LEVEL = 0x6c;
static const Shortint ADS_DD_MAX_FAILED_ATTEMPTS = 0x6d;
static const Shortint ADS_DD_ALLOW_ADSSYS_NET_ACCESS = 0x6e;
static const Shortint ADS_DD_VERSION_MAJOR = 0x6f;
static const Shortint ADS_DD_VERSION_MINOR = 0x70;
static const Shortint ADS_DD_LOGINS_DISABLED = 0x71;
static const Shortint ADS_DD_LOGINS_DISABLED_ERRSTR = 0x72;
static const Shortint ADS_DD_FTS_DELIMITERS = 0x73;
static const Shortint ADS_DD_FTS_NOISE = 0x74;
static const Shortint ADS_DD_FTS_DROP_CHARS = 0x75;
static const Shortint ADS_DD_FTS_CONDITIONAL_CHARS = 0x76;
static const Shortint ADS_DD_ENCRYPTED = 0x77;
static const Shortint ADS_DD_ENCRYPT_INDEXES = 0x78;
static const Shortint ADS_DD_QUERY_LOG_TABLE = 0x79;
static const Shortint ADS_DD_ENCRYPT_COMMUNICATION = 0x7a;
static const Shortint ADS_DD_DEFAULT_TABLE_RELATIVE_PATH = 0x7b;
static const Shortint ADS_DD_TEMP_TABLE_RELATIVE_PATH = 0x7c;
static const Shortint ADS_DD_DISABLE_DLL_CACHING = 0x7d;
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
static const Byte ADS_DD_TABLE_ENCRYPTION = 0xd6;
static const Byte ADS_DD_TABLE_MEMO_BLOCK_SIZE = 0xd7;
static const Byte ADS_DD_TABLE_PERMISSION_LEVEL = 0xd8;
static const Byte ADS_DD_TABLE_TRIGGER_TYPES = 0xd9;
static const Byte ADS_DD_TABLE_TRIGGER_OPTIONS = 0xda;
static const Word ADS_DD_FIELD_DEFAULT_VALUE = 0x12c;
static const Word ADS_DD_FIELD_CAN_NULL = 0x12d;
static const Word ADS_DD_FIELD_MIN_VALUE = 0x12e;
static const Word ADS_DD_FIELD_MAX_VALUE = 0x12f;
static const Word ADS_DD_FIELD_VALIDATION_MSG = 0x130;
static const Word ADS_DD_FIELD_DEFINITION = 0x131;
static const Word ADS_DD_FIELD_TYPE = 0x132;
static const Word ADS_DD_FIELD_LENGTH = 0x133;
static const Word ADS_DD_FIELD_DECIMAL = 0x134;
static const Word ADS_DD_FIELD_NUM = 0x135;
static const Word ADS_DD_INDEX_FILE_NAME = 0x190;
static const Word ADS_DD_INDEX_EXPRESSION = 0x191;
static const Word ADS_DD_INDEX_CONDITION = 0x192;
static const Word ADS_DD_INDEX_OPTIONS = 0x193;
static const Word ADS_DD_INDEX_KEY_LENGTH = 0x194;
static const Word ADS_DD_INDEX_KEY_TYPE = 0x195;
static const Word ADS_DD_INDEX_FTS_MIN_LENGTH = 0x196;
static const Word ADS_DD_INDEX_FTS_DELIMITERS = 0x197;
static const Word ADS_DD_INDEX_FTS_NOISE = 0x198;
static const Word ADS_DD_INDEX_FTS_DROP_CHARS = 0x199;
static const Word ADS_DD_INDEX_FTS_CONDITIONAL_CHARS = 0x19a;
static const Word ADS_DD_RI_PARENT_GRAPH = 0x1f4;
static const Word ADS_DD_RI_PRIMARY_TABLE = 0x1f5;
static const Word ADS_DD_RI_PRIMARY_INDEX = 0x1f6;
static const Word ADS_DD_RI_FOREIGN_TABLE = 0x1f7;
static const Word ADS_DD_RI_FOREIGN_INDEX = 0x1f8;
static const Word ADS_DD_RI_UPDATERULE = 0x1f9;
static const Word ADS_DD_RI_DELETERULE = 0x1fa;
static const Word ADS_DD_RI_NO_PKEY_ERROR = 0x1fb;
static const Word ADS_DD_RI_CASCADE_ERROR = 0x1fc;
static const Word ADS_DD_USER_GROUP_NAME = 0x258;
static const Word ADS_DD_VIEW_STMT = 0x2bc;
static const Word ADS_DD_VIEW_STMT_LEN = 0x2bd;
static const Word ADS_DD_VIEW_TRIGGER_TYPES = 0x2be;
static const Word ADS_DD_VIEW_TRIGGER_OPTIONS = 0x2bf;
static const Word ADS_DD_PROC_INPUT = 0x320;
static const Word ADS_DD_PROC_OUTPUT = 0x321;
static const Word ADS_DD_PROC_DLL_NAME = 0x322;
static const Word ADS_DD_PROC_DLL_FUNCTION_NAME = 0x323;
static const Word ADS_DD_PROC_INVOKE_OPTION = 0x324;
static const Word ADS_DD_PROC_SCRIPT = 0x325;
static const Word ADS_DD_INDEX_FILE_PATH = 0x384;
static const Word ADS_DD_INDEX_FILE_PAGESIZE = 0x385;
static const Word ADS_DD_INDEX_FILE_RELATIVE_PATH = 0x386;
static const Word ADS_DD_INDEX_FILE_TYPE = 0x387;
static const Word ADS_DD_TABLES_RIGHTS = 0x3e9;
static const Word ADS_DD_VIEWS_RIGHTS = 0x3ea;
static const Word ADS_DD_PROCS_RIGHTS = 0x3eb;
static const Word ADS_DD_OBJECTS_RIGHTS = 0x3ec;
static const Word ADS_DD_FREE_TABLES_RIGHTS = 0x3ed;
static const Word ADS_DD_USER_PASSWORD = 0x44d;
static const Word ADS_DD_USER_GROUP_MEMBERSHIP = 0x44e;
static const Word ADS_DD_USER_BAD_LOGINS = 0x44f;
static const Word ADS_DD_LINK_PATH = 0x514;
static const Word ADS_DD_LINK_OPTIONS = 0x515;
static const Word ADS_DD_LINK_USERNAME = 0x516;
static const Word ADS_DD_LINK_RELATIVE_PATH = 0x517;
static const Word ADS_DD_TRIG_TABLEID = 0x578;
static const Word ADS_DD_TRIG_EVENT_TYPE = 0x579;
static const Word ADS_DD_TRIG_TRIGGER_TYPE = 0x57a;
static const Word ADS_DD_TRIG_CONTAINER_TYPE = 0x57b;
static const Word ADS_DD_TRIG_CONTAINER = 0x57c;
static const Word ADS_DD_TRIG_FUNCTION_NAME = 0x57d;
static const Word ADS_DD_TRIG_PRIORITY = 0x57e;
static const Word ADS_DD_TRIG_OPTIONS = 0x57f;
static const Word ADS_DD_TRIG_TABLENAME = 0x580;
static const Word ADS_DD_PUBLICATION_OPTIONS = 0x5dc;
static const Word ADS_DD_ARTICLE_FILTER = 0x640;
static const Word ADS_DD_ARTICLE_ID_COLUMNS = 0x641;
static const Word ADS_DD_ARTICLE_ID_COLUMN_NUMBERS = 0x642;
static const Word ADS_DD_ARTICLE_FILTER_SHORT = 0x643;
static const Word ADS_DD_ARTICLE_INCLUDE_COLUMNS = 0x644;
static const Word ADS_DD_ARTICLE_EXCLUDE_COLUMNS = 0x645;
static const Word ADS_DD_ARTICLE_INC_COLUMN_NUMBERS = 0x646;
static const Word ADS_DD_SUBSCR_PUBLICATION_NAME = 0x6a4;
static const Word ADS_DD_SUBSCR_TARGET = 0x6a5;
static const Word ADS_DD_SUBSCR_USERNAME = 0x6a6;
static const Word ADS_DD_SUBSCR_PASSWORD = 0x6a7;
static const Word ADS_DD_SUBSCR_FORWARD = 0x6a8;
static const Word ADS_DD_SUBSCR_ENABLED = 0x6a9;
static const Word ADS_DD_SUBSCR_QUEUE_NAME = 0x6aa;
static const Word ADS_DD_SUBSCR_OPTIONS = 0x6ab;
static const Shortint ADS_DD_LEVEL_0 = 0x0;
static const Shortint ADS_DD_LEVEL_1 = 0x1;
static const Shortint ADS_DD_LEVEL_2 = 0x2;
static const Shortint ADS_DD_RI_CASCADE = 0x1;
static const Shortint ADS_DD_RI_RESTRICT = 0x2;
static const Shortint ADS_DD_RI_SETNULL = 0x3;
static const Shortint ADS_DD_RI_SETDEFAULT = 0x4;
static const Shortint ADS_DD_DFV_UNKNOWN = 0x1;
static const Shortint ADS_DD_DFV_NONE = 0x2;
static const Shortint ADS_DD_DFV_VALUES_STORED = 0x3;
static const Shortint ADS_PERMISSION_NONE = 0x0;
static const Shortint ADS_PERMISSION_READ = 0x1;
static const Shortint ADS_PERMISSION_UPDATE = 0x2;
static const Shortint ADS_PERMISSION_EXECUTE = 0x4;
static const Shortint ADS_PERMISSION_INHERIT = 0x8;
static const Shortint ADS_PERMISSION_INSERT = 0x10;
static const Shortint ADS_PERMISSION_DELETE = 0x20;
static const Shortint ADS_PERMISSION_LINK_ACCESS = 0x40;
static const Byte ADS_PERMISSION_CREATE = 0x80;
static const Word ADS_PERMISSION_ALTER = 0x100;
static const Word ADS_PERMISSION_DROP = 0x200;
static const unsigned ADS_PERMISSION_WITH_GRANT = 0x80000000;
static const unsigned ADS_PERMISSION_ALL_WITH_GRANT = 0x8fffffff;
static const unsigned ADS_PERMISSION_ALL = 0xffffffff;
static const unsigned ADS_GET_PERMISSIONS_WITH_GRANT = 0x8000ffff;
static const unsigned ADS_GET_PERMISSIONS_CREATE = 0xffff0080;
static const unsigned ADS_GET_PERMISSIONS_CREATE_WITH_GRANT = 0x8fffff8f;
static const Shortint ADS_LINK_GLOBAL = 0x1;
static const Shortint ADS_LINK_AUTH_ACTIVE_USER = 0x2;
static const Shortint ADS_LINK_PATH_IS_STATIC = 0x4;
static const Shortint ADS_TRIGEVENT_INSERT = 0x1;
static const Shortint ADS_TRIGEVENT_UPDATE = 0x2;
static const Shortint ADS_TRIGEVENT_DELETE = 0x3;
static const Shortint ADS_TRIGTYPE_BEFORE = 0x1;
static const Shortint ADS_TRIGTYPE_INSTEADOF = 0x2;
static const Shortint ADS_TRIGTYPE_AFTER = 0x4;
static const Shortint ADS_TRIGTYPE_CONFLICTON = 0x8;
static const Shortint ADS_TRIG_WIN32DLL = 0x1;
static const Shortint ADS_TRIG_COM = 0x2;
static const Shortint ADS_TRIG_SCRIPT = 0x3;
static const Shortint ADS_TRIGOPTIONS_NO_VALUES = 0x0;
static const Shortint ADS_TRIGOPTIONS_WANT_VALUES = 0x1;
static const Shortint ADS_TRIGOPTIONS_WANT_MEMOS_AND_BLOBS = 0x2;
static const Shortint ADS_TRIGOPTIONS_DEFAULT = 0x3;
static const Shortint ADS_TRIGOPTIONS_NO_TRANSACTION = 0x4;
static const Shortint ADS_DD_TABLE_PERMISSION_LEVEL_1 = 0x1;
static const Shortint ADS_DD_TABLE_PERMISSION_LEVEL_2 = 0x2;
static const Shortint ADS_DD_TABLE_PERMISSION_LEVEL_3 = 0x3;
static const Shortint ADS_KEEP_TABLE_FILE_NAME = 0x1;
static const Shortint ADS_IDENTIFY_BY_PRIMARY = 0x1;
static const Shortint ADS_IDENTIFY_BY_ALL = 0x2;
static const Shortint ADS_SUBSCR_QUEUE_IS_STATIC = 0x1;
static const Shortint ADS_SUBSCR_AIS_TARGET = 0x2;
static const Shortint ADS_SUBSCR_IGNORE_FAILED_REP = 0x4;
static const Shortint ADS_SUBSCR_LOG_FAILED_REP_DATA = 0x8;
#define ADS_SYSTEM_DICTIONARY_TABLE_NAME "dictionary"
#define ADS_SYSTEM_TABLES_TABLE_NAME "tables"
#define ADS_SYSTEM_COLUMNS_TABLE_NAME "columns"
#define ADS_SYSTEM_USERS_TABLE_NAME "users"
#define ADS_SYSTEM_USER_GROUPS_TABLE_NAME "usergroups"
#define ADS_SYSTEM_USER_GROUP_MEMBERS_TABLE_NAME "usergroupmembers"
#define ADS_SYSTEM_INDEX_FILES_TABLE_NAME "indexfiles"
#define ADS_SYSTEM_INDEXES_TABLE_NAME "indexes"
#define ADS_SYSTEM_PERMISSIONS_TABLE_NAME "permissions"
#define ADS_SYSTEM_RELATIONS_TABLE_NAME "relations"
#define ADS_SYSTEM_VIEWS_TABLE_NAME "views"
#define ADS_SYSTEM_STORED_PROCEDURES_TABLE_NAME "storedprocedures"
#define ADS_SYSTEM_LINKS_TABLE_NAME "links"
#define ADS_SYSTEM_OBJECTS_TABLE_NAME "objects"
#define ADS_SYSTEM_TRIGGERS_TABLE_NAME "triggers"
static const Shortint ADS_NUMBER_SYSTEM_TABLES = 0xf;
extern "C" unsigned __stdcall AdsDDRemoveProcedure(int hDictionary, char * pucName);
extern "C" unsigned __stdcall AdsDDAddProcedure(int hDictionary, char * pucName, char * pucDll, char * pucProcName, unsigned ulInvokeOption, char * pucInParams, char * pucOutParams, char * pucComments);
extern "C" unsigned __stdcall AdsDDSetUserGroupProperty(int hObj, char * pucGroupName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDGetUserGroupProperty(int hObj, char * pucGroupName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDSetObjectAccessRights(int hObj, char * pucObjectName, char * pucAccessorName, char * pucAllowedRights);
extern "C" unsigned __stdcall AdsDDGetUserProperty(int hObj, char * pucUserName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDSetUserProperty(int hObj, char * pucUserName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDDeleteUserGroup(int hObj, char * pucGroupName);
extern "C" unsigned __stdcall AdsDDCreateUserGroup(int hObj, char * pucGroupName, char * pucDescription);
extern "C" unsigned __stdcall AdsDDRemoveUserFromGroup(int hObj, char * pucGroupName, char * pucUserName);
extern "C" unsigned __stdcall AdsDDAddUserToGroup(int hObj, char * pucGroupName, char * pucUserName);
extern "C" unsigned __stdcall AdsDDDeleteUser(int hObj, char * pucUserName);
extern "C" unsigned __stdcall AdsDDCreateUser(int hObj, char * pucGroupName, char * pucUserName, char * pucPassword, char * pucDescription);
extern "C" unsigned __stdcall AdsDDGetProcedureProperty(int hObj, char * pucProcName, Word usProperty, void * pvProperty, PUNSIGNED16 usPropertyLen);
extern "C" unsigned __stdcall AdsDDSetProcedureProperty(int hObj, char * pucProcedureName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDAddView(int hDictionary, char * pucName, char * pucCommnets, char * pucSQL);
extern "C" unsigned __stdcall AdsDDRemoveView(int hDictionary, char * pucName);
extern "C" unsigned __stdcall AdsDDGetViewProperty(int hDictionary, char * pucViewName, Word usPropertyID, void * pvproperty, PUNSIGNED16 usPropertyLen);
extern "C" unsigned __stdcall AdsDDSetViewProperty(int hObj, char * pucViewName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDDeleteIndex(int hDictionary, char * pucTableName, char * pucIndexName);
extern "C" unsigned __stdcall AdsDDCreate(char * pucDictionaryPath, Word usEncrypt, char * pucDescription, PADSHANDLE phDictionary);
extern "C" unsigned __stdcall AdsDDGetRefIntegrityProperty(int hObject, char * pucRefName, Word usPropertyID, void * pucProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDRemoveRefIntegrity(int hDictionary, char * pucRefName);
extern "C" unsigned __stdcall AdsDDCreateRefIntegrity(int hDictionary, char * pucRIName, char * pucFailTableName, char * pucParentTableName, char * pucParentTagName, char * pucChildTableName, char * pucChildTagName, Word usUpdateRule, Word usDeleteRule);
extern "C" unsigned __stdcall AdsDDAddIndexFile(int hDictionary, char * pucTableName, char * pucIndexFileName, char * pucComment);
extern "C" unsigned __stdcall AdsDDRemoveIndexFile(int hDictonary, char * pucTableName, char * pucIndexFileName, Word ucDeletedFile);
extern "C" unsigned __stdcall AdsDDRenameObject(int hDictionary, char * pucObjectName, char * pucNewObjectName, Word usObjectType, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDGetFieldProperty(int hObject, char * pucTableName, char * pucFieldName, Word usPropertyID, char * pucProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDGetIndexFileProperty(int hObject, char * pucTableName, char * pucIndexFileName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDGetIndexProperty(int hObject, char * pucTableName, char * pucIndexName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDSetFieldProperty(int hDictionary, char * pucTableName, char * pucFieldName, Word usPropertyID, void * pvProperty, Word usPropertyLength, Word usValidateOption, char * pucFailTable);
extern "C" unsigned __stdcall AdsConnect60(char * pucServerPath, Word usServerTypes, char * pucUserName, char * pucPassword, unsigned ulOptions, PADSHANDLE phConnect);
extern "C" unsigned __stdcall AdsDDGetTableProperty(int hObject, char * pucTableName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pucPropertyLen);
extern "C" unsigned __stdcall AdsDDSetTableProperty(int hDictionary, char * pucTableName, Word usPropertyID, void * pvProperty, Word usPropertyLen, Word usValidateOption, char * pucFailTable);
extern "C" unsigned __stdcall AdsDDRemoveTable(int hObject, char * pucTableName, Word usDeleteFile);
extern "C" unsigned __stdcall AdsDDFindClose(int hObject, int hFindHandle);
extern "C" unsigned __stdcall AdsDDFindNextObject(int hObject, int hFindHandle, char * pucObjectName, PUNSIGNED16 pusObjectNameLen);
extern "C" unsigned __stdcall AdsDDFindFirstObject(int hObject, Word usObjectType, char * pucParentName, char * pucObjectName, PUNSIGNED16 pusObjectNameLen, PADSHANDLE phFindHandle);
extern "C" unsigned __stdcall AdsDDAddTable(int hDictionary, char * pucTableName, char * pucTablePath, Word usTableType, Word usCharType, char * pucIndexFiles, char * pucComments);
extern "C" unsigned __stdcall AdsDDGetDatabaseProperty(int hDictionary, Word usPropertyID, void * pucProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDSetDatabaseProperty(int hDictionary, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsAddCustomKey(int hIndex);
extern "C" unsigned __stdcall AdsAppendRecord(int hTable);
extern "C" unsigned __stdcall AdsApplicationExit(void);
extern "C" unsigned __stdcall AdsAtBOF(int hTable, PWord pbBof);
extern "C" unsigned __stdcall AdsAtEOF(int hTable, PWord pbEof);
extern "C" unsigned __stdcall AdsBeginTransaction(int hConnect);
extern "C" unsigned __stdcall AdsBinaryToFile(int hTable, char * pucFieldName, char * pucFileName);
extern "C" unsigned __stdcall AdsBuildRawKey(int hIndex, char * pucKey, PWord pusLen);
extern "C" unsigned __stdcall AdsCacheOpenCursors(Word usOpen);
extern "C" unsigned __stdcall AdsCacheOpenTables(Word usOpen);
extern "C" unsigned __stdcall AdsCacheRecords(int hTable, Word usNumRecords);
extern "C" unsigned __stdcall AdsCancelUpdate(int hTable);
extern "C" unsigned __stdcall AdsCheckExistence(int hConnect, char * pucFileName, PWord pusOnDisk);
extern "C" unsigned __stdcall AdsClearAOF(int hTable);
extern "C" unsigned __stdcall AdsClearAllScopes(int hTable);
extern "C" unsigned __stdcall AdsClearCallbackFunction(void);
extern "C" unsigned __stdcall AdsClearDefault(void);
extern "C" unsigned __stdcall AdsClearFilter(int hTable);
extern "C" unsigned __stdcall AdsClearProgressCallback(void);
extern "C" unsigned __stdcall AdsClearRelation(int hTableParent);
extern "C" unsigned __stdcall AdsClearSQLAbortFunc(void);
extern "C" unsigned __stdcall AdsClearSQLParams(int hStatement);
extern "C" unsigned __stdcall AdsClearScope(int hIndex, Word usScopeOption);
extern "C" unsigned __stdcall AdsCloneTable(int hTable, PADSHANDLE phClone);
extern "C" unsigned __stdcall AdsCloseAllIndexes(int hTable);
extern "C" unsigned __stdcall AdsCloseAllTables(void);
extern "C" unsigned __stdcall AdsCloseIndex(int hIndex);
extern "C" unsigned __stdcall AdsCloseSQLStatement(int hStatement);
extern "C" unsigned __stdcall AdsCloseTable(int hTable);
extern "C" unsigned __stdcall AdsCloseCachedTables(int hConnection);
extern "C" unsigned __stdcall AdsCommitTransaction(int hConnect);
extern "C" unsigned __stdcall AdsConnect(char * pucServerName, PADSHANDLE phConnect);
extern "C" unsigned __stdcall AdsConnect26(char * pucServerName, Word usServerOptions, PADSHANDLE phConnect);
extern "C" unsigned __stdcall AdsContinue(int hTable, PWord pbFound);
extern "C" unsigned __stdcall AdsConvertTable(int hObj, Word usFilterOption, char * pucFile, Word usTableType);
extern "C" unsigned __stdcall AdsCopyTable(int hObj, Word usFilterOption, char * pucFile);
extern "C" unsigned __stdcall AdsCopyTableContents(int hObjFrom, int hTableTo, Word usFilterOption);
extern "C" unsigned __stdcall AdsCopyTableStructure(int hTable, char * pucFile);
extern "C" unsigned __stdcall AdsCreateIndex(int hObj, char * pucFileName, char * pucTag, char * pucExpr, char * pucCondition, char * pucWhile, unsigned ulOptions, PADSHANDLE phIndex);
extern "C" unsigned __stdcall AdsCreateIndex61(int hObj, char * pucFileName, char * pucTag, char * pucExpr, char * pucCondition, char * pucWhile, unsigned ulOptions, unsigned ulPageSize, PADSHANDLE phIndex);
extern "C" unsigned __stdcall AdsCreateFTSIndex(int hTable, char * pucFileName, char * pucTag, char * pucField, unsigned ulPageSize, unsigned ulMinWordLen, unsigned ulMaxWordLen, Word bUseDefaultDelim, char * pucDelimiters, Word bUseDefaultNoise, char * pucNoiseWords, Word bUseDefaultDrop, char * pucDropChars, Word bUseDefaultConditionals, char * pucConditionalChars, char * pucReserved1, char * pucReserved2, unsigned ulOptions);
extern "C" unsigned __stdcall AdsCreateSQLStatement(int hConnect, PADSHANDLE phStatement);
extern "C" unsigned __stdcall AdsCreateTable(int hConnection, char * pucName, char * pucAlias, Word usTableType, Word usCharType, Word usLockType, Word usCheckRights, Word usMemoSize, char * pucFields, PADSHANDLE phTable);
extern "C" unsigned __stdcall AdsCreateTable71(int hConnection, char * pucName, char * pucDBObjName, Word usTableType, Word usCharType, Word usLockType, Word usCheckRights, Word usMemoSize, char * pucFields, unsigned ulOptions, PADSHANDLE phTable);
extern "C" unsigned __stdcall AdsCustomizeAOF(int hTable, unsigned ulNumRecords, PUNSIGNED32 pulRecords, Word usOption);
extern "C" unsigned __stdcall AdsDecryptRecord(int hTable);
extern "C" unsigned __stdcall AdsDecryptTable(int hTable);
extern "C" unsigned __stdcall AdsDeleteCustomKey(int hIndex);
extern "C" unsigned __stdcall AdsDeleteIndex(int hIndex);
extern "C" unsigned __stdcall AdsDeleteRecord(int hTable);
extern "C" unsigned __stdcall AdsDisableEncryption(int hTable);
extern "C" unsigned __stdcall AdsDisconnect(int hConnect);
extern "C" unsigned __stdcall AdsEnableEncryption(int hTable, char * pucPassword);
extern "C" unsigned __stdcall AdsEncryptRecord(int hTable);
extern "C" unsigned __stdcall AdsEncryptTable(int hTable);
extern "C" unsigned __stdcall AdsEvalAOF(int hTable, char * pucFilter, PWord pusOptLevel);
extern "C" unsigned __stdcall AdsEvalLogicalExpr(int hIndex, char * pucExpr, PWord pbResult);
extern "C" unsigned __stdcall AdsEvalNumericExpr(int hIndex, char * pucExpr, PDOUBLE pdResult);
extern "C" unsigned __stdcall AdsEvalStringExpr(int hIndex, char * pucExpr, char * pucResult, PWord pusLen);
extern "C" unsigned __stdcall AdsEvalTestExpr(int hIndex, char * pucExpr, PWord pusType);
extern "C" unsigned __stdcall AdsExecuteSQL(int hStatement, PADSHANDLE phCursor);
extern "C" unsigned __stdcall AdsExecuteSQLDirect(int hStatement, char * pucSQL, PADSHANDLE phCursor);
extern "C" unsigned __stdcall AdsExtractKey(int hIndex, char * pucKey, PWord pusLen);
extern "C" unsigned __stdcall AdsFailedTransactionRecovery(char * pucServer);
extern "C" unsigned __stdcall AdsFileToBinary(int hTable, char * pucFldName, Word usBinaryType, char * pucFileName);
extern "C" unsigned __stdcall AdsFindConnection(char * pucServerName, PADSHANDLE phConnect);
extern "C" unsigned __stdcall AdsFindConnection25(char * pucFullPath, PADSHANDLE phConnect);
extern "C" unsigned __stdcall AdsGetAOF(int hTable, char * pucFilter, PWord pusLen);
extern "C" unsigned __stdcall AdsGetAOFOptLevel(int hTable, PWord pusOptLevel, char * pucNonOpt, PWord pusLen);
extern "C" unsigned __stdcall AdsGetAllIndexes(int hTable, PADSIndexArray ahIndex, PWord pusArrayLen);
extern "C" unsigned __stdcall AdsGetFTSIndexes(int hTable, PADSIndexArray ahIndex, PWord pusArrayLen);
extern "C" unsigned __stdcall AdsGetAllLocks(int hTable, void * aulLocks, PWord pusArrayLen);
extern "C" unsigned __stdcall AdsGetAllTables(void * ahTable, PWord pusArrayLen);
extern "C" unsigned __stdcall AdsGetBinary(int hTable, char * pucFldName, unsigned ulOffset, char * pucBuf, PUNSIGNED32 pulLen);
extern "C" unsigned __stdcall AdsGetBinaryLength(int hTable, char * pucFldName, PUNSIGNED32 pulLength);
extern "C" unsigned __stdcall AdsGetBookmark(int hTable, PADSHANDLE phBookmark);
extern "C" unsigned __stdcall AdsGetBookmark60(int hObj, char * pucBookmark, PUNSIGNED32 pulLength);
extern "C" unsigned __stdcall AdsGetBookmarkLength(int hObj, PUNSIGNED32 pulLength);
extern "C" unsigned __stdcall AdsCompareBookmarks(char * pucBookmark1, char * pucBookmark2, PSIGNED32 plResult);
extern "C" unsigned __stdcall AdsGetCollationLang(char * pucLang, PWord pusLen);
extern "C" unsigned __stdcall AdsGetConnectionType(int hConnect, PWord pusConnectType);
extern "C" unsigned __stdcall AdsGetConnectionPath(int hConnect, char * pucConnectionPath, PWord pusLen);
extern "C" unsigned __stdcall AdsGetConnectionProperty(int hConnect, Word usPropertyID, void * pvProperty, PUNSIGNED32 pulPropertyLen);
extern "C" unsigned __stdcall AdsGetDate(int hTable, char * pucFldName, char * pucBuf, PWord pusLen);
extern "C" unsigned __stdcall AdsGetDateFormat(char * pucFormat, PWord pusLen);
extern "C" unsigned __stdcall AdsGetDateFormat60(int hConnect, char * pucFormat, PWord pusLen);
extern "C" unsigned __stdcall AdsGetDecimals(PWord pusDecimals);
extern "C" unsigned __stdcall AdsGetDefault(char * pucDefault, PWord pusLen);
extern "C" unsigned __stdcall AdsGetDeleted(PWord pbUseDeleted);
extern "C" unsigned __stdcall AdsGetDouble(int hTable, char * pucFldName, PDOUBLE pdValue);
extern "C" unsigned __stdcall AdsGetEpoch(PWord pusCentury);
extern "C" unsigned __stdcall AdsGetErrorString(unsigned ulErrCode, char * pucBuf, PWord pusBufLen);
extern "C" unsigned __stdcall AdsGetExact22(int hObj, PWord pbExact);
extern "C" unsigned __stdcall AdsGetExact(PWord pbExact);
extern "C" unsigned __stdcall AdsGetField(int hTable, char * pucFldName, char * pucBuf, PUNSIGNED32 pulLen, Word usOption);
extern "C" unsigned __stdcall AdsGetFieldDecimals(int hTable, char * pucFldName, PWord pusDecimals);
extern "C" unsigned __stdcall AdsGetFieldLength(int hTable, char * pucFldName, PUNSIGNED32 pulLength);
extern "C" unsigned __stdcall AdsGetFieldName(int hTable, Word usFld, char * pucName, PWord pusBufLen);
extern "C" unsigned __stdcall AdsGetFieldNum(int hTable, char * pucFldName, PWord pusNum);
extern "C" unsigned __stdcall AdsGetFieldOffset(int hTable, char * pucFldName, PUNSIGNED32 pulOffset);
extern "C" unsigned __stdcall AdsGetFieldType(int hTable, char * pucFldName, PWord pusType);
extern "C" unsigned __stdcall AdsGetFilter(int hTable, char * pucFilter, PWord pusLen);
extern "C" unsigned __stdcall AdsGetHandleLong(int hObj, PUNSIGNED32 pulVal);
extern "C" unsigned __stdcall AdsGetHandleType(int hObj, PWord pusType);
extern "C" unsigned __stdcall AdsGetIndexCondition(int hIndex, char * pucExpr, PWord pusLen);
extern "C" unsigned __stdcall AdsGetIndexExpr(int hIndex, char * pucExpr, PWord pusLen);
extern "C" unsigned __stdcall AdsGetIndexFilename(int hIndex, Word usOption, char * pucName, PWord pusLen);
extern "C" unsigned __stdcall AdsGetIndexHandle(int hTable, char * pucIndexOrder, PADSHANDLE phIndex);
extern "C" unsigned __stdcall AdsGetIndexHandleByExpr(int hTable, char * pucExpr, unsigned ulDescending, PADSHANDLE phIndex);
extern "C" unsigned __stdcall AdsGetIndexHandleByOrder(int hTable, Word usIndexOrder, PADSHANDLE phIndex);
extern "C" unsigned __stdcall AdsGetIndexName(int hIndex, char * pucName, PWord pusLen);
extern "C" unsigned __stdcall AdsGetIndexOrderByHandle(int hIndex, PWord pusIndexOrder);
extern "C" unsigned __stdcall AdsGetFTSIndexInfo(int hIndex, char * pucOutput, PUNSIGNED32 pulBufLen, pPChar ppucField, PUNSIGNED32 pulMinWordLen, PUNSIGNED32 pulMaxWordLen, pPChar ppucDelimiters, pPChar ppucNoiseWords, pPChar ppucDropChars, pPChar ppucConditionalChars, pPChar ppucReserved1, pPChar ppucReserved2, PUNSIGNED32 pulOptions);
extern "C" unsigned __stdcall AdsGetJulian(int hTable, char * pucFldName, PSIGNED32 plDate);
extern "C" unsigned __stdcall AdsGetKeyColumn(int hCursor, char * pucKeyColumn, PWord pusLen);
extern "C" unsigned __stdcall AdsGetKeyCount(int hIndex, Word usFilterOption, PUNSIGNED32 pulCount);
extern "C" unsigned __stdcall AdsGetKeyLength(int hIndex, PWord pusKeyLength);
extern "C" unsigned __stdcall AdsGetKeyNum(int hIndex, Word usFilterOption, PUNSIGNED32 pulKey);
extern "C" unsigned __stdcall AdsGetKeyType(int hIndex, PWord pusKeyType);
extern "C" unsigned __stdcall AdsGetLastError(PUNSIGNED32 pulErrCode, char * pucBuf, PWord pusBufLen);
extern "C" unsigned __stdcall AdsGetLastTableUpdate(int hTable, char * pucDate, PWord pusDateLen);
extern "C" unsigned __stdcall AdsGetLogical(int hTable, char * pucFldName, PWord pbValue);
extern "C" unsigned __stdcall AdsGetLong(int hTable, char * pucFldName, PSIGNED32 plValue);
extern "C" unsigned __stdcall AdsGetLongLong(int hTable, char * pucFldName, PSIGNED64 pqValue);
extern "C" unsigned __stdcall AdsGetMemoBlockSize(int hTable, PWord pusBlockSize);
extern "C" unsigned __stdcall AdsGetMemoDataType(int hTable, char * pucFldName, PWord pusType);
extern "C" unsigned __stdcall AdsGetMemoLength(int hTable, char * pucFldName, PUNSIGNED32 pulLength);
extern "C" unsigned __stdcall AdsGetMilliseconds(int hTable, char * pucFldName, PSIGNED32 plTime);
extern "C" unsigned __stdcall AdsGetMoney(int hTable, char * pucFldName, PSIGNED64 pqValue);
extern "C" unsigned __stdcall AdsGetNumFields(int hTable, PWord pusCount);
extern "C" unsigned __stdcall AdsGetNumIndexes(int hTable, PWord pusNum);
extern "C" unsigned __stdcall AdsGetNumFTSIndexes(int hTable, PWord pusNum);
extern "C" unsigned __stdcall AdsGetNumLocks(int hTable, PWord pusNum);
extern "C" unsigned __stdcall AdsGetNumOpenTables(PWord pusNum);
extern "C" unsigned __stdcall AdsGetRecord(int hTable, char * pucRec, PUNSIGNED32 pulLen);
extern "C" unsigned __stdcall AdsGetRecordCount(int hTable, Word usFilterOption, PUNSIGNED32 pulCount);
extern "C" unsigned __stdcall AdsGetRecordLength(int hTable, PUNSIGNED32 pulLength);
extern "C" unsigned __stdcall AdsGetRecordCRC(int hTable, PUNSIGNED32 pulCRC, unsigned ulOptions);
extern "C" unsigned __stdcall AdsGetRecordNum(int hTable, Word usFilterOption, PUNSIGNED32 pulRec);
extern "C" unsigned __stdcall AdsGetRelKeyPos(int hIndex, PDOUBLE pdPos);
extern "C" unsigned __stdcall AdsGetScope(int hIndex, Word usScopeOption, char * pucScope, PWord pusBufLen);
extern "C" unsigned __stdcall AdsGetSearchPath(char * pucPath, PWord pusLen);
extern "C" unsigned __stdcall AdsGetServerName(int hConnect, char * pucName, PWord pusLen);
extern "C" unsigned __stdcall AdsGetServerTime(int hConnect, char * pucDateBuf, PWord pusDateBufLen, PSIGNED32 plTime, char * pucTimeBuf, PWord pusTimeBufLen);
extern "C" unsigned __stdcall AdsGetShort(int hTable, char * pucFldName, PSIGNED16 psValue);
extern "C" unsigned __stdcall AdsGetString(int hTable, char * pucFldName, char * pucBuf, PUNSIGNED32 pulLen, Word usOption);
extern "C" unsigned __stdcall AdsGetTableAlias(int hTable, char * pucAlias, PWord pusLen);
extern "C" unsigned __stdcall AdsGetTableCharType(int hTable, PWord pusCharType);
extern "C" unsigned __stdcall AdsGetTableConnection(int hTable, PADSHANDLE phConnect);
extern "C" unsigned __stdcall AdsGetTableFilename(int hTable, Word usOption, char * pucName, PWord pusLen);
extern "C" unsigned __stdcall AdsGetTableHandle(char * pucName, PADSHANDLE phTable);
extern "C" unsigned __stdcall AdsGetTableLockType(int hTable, PWord pusLockType);
extern "C" unsigned __stdcall AdsGetTableMemoSize(int hTable, PWord pusMemoSize);
extern "C" unsigned __stdcall AdsGetTableOpenOptions(int hTable, PUNSIGNED32 pulOptions);
extern "C" unsigned __stdcall AdsGetTableRights(int hTable, PWord pusRights);
extern "C" unsigned __stdcall AdsGetTableType(int hTable, PWord pusType);
extern "C" unsigned __stdcall AdsGetTime(int hTable, char * pucFldName, char * pucBuf, PWord pusLen);
extern "C" unsigned __stdcall AdsGetVersion(PUNSIGNED32 pulMajor, PUNSIGNED32 pulMinor, char * pucLetter, char * pucDesc, PWord pusDescLen);
extern "C" unsigned __stdcall AdsGotoBookmark(int hTable, int hBookmark);
extern "C" unsigned __stdcall AdsGotoBookmark60(int hObj, char * pucBookmark);
extern "C" unsigned __stdcall AdsGotoBottom(int hObj);
extern "C" unsigned __stdcall AdsGotoRecord(int hTable, unsigned ulRec);
extern "C" unsigned __stdcall AdsGotoTop(int hObj);
extern "C" unsigned __stdcall AdsImageToClipboard(int hTable, char * pucFldName);
extern "C" unsigned __stdcall AdsInTransaction(int hConnect, PWord pbInTrans);
extern "C" unsigned __stdcall AdsInitRawKey(int hIndex);
extern "C" unsigned __stdcall AdsIsEmpty(int hTable, char * pucFldName, PWord pbEmpty);
extern "C" unsigned __stdcall AdsIsExprValid(int hTable, char * pucExpr, PWord pbValid);
extern "C" unsigned __stdcall AdsIsFound(int hObj, PWord pbFound);
extern "C" unsigned __stdcall AdsIsIndexCompound(int hIndex, PWord pbCompound);
extern "C" unsigned __stdcall AdsIsIndexCustom(int hIndex, PWord pbCustom);
extern "C" unsigned __stdcall AdsIsIndexDescending(int hIndex, PWord pbDescending);
extern "C" unsigned __stdcall AdsIsIndexPrimaryKey(int hIndex, PWord pbPrimaryKey);
extern "C" unsigned __stdcall AdsIsIndexFTS(int hIndex, PWord pbFTS);
extern "C" unsigned __stdcall AdsIsIndexUnique(int hIndex, PWord pbUnique);
extern "C" unsigned __stdcall AdsIsRecordDeleted(int hTable, PWord pbDeleted);
extern "C" unsigned __stdcall AdsIsRecordEncrypted(int hTable, PWord pbEncrypted);
extern "C" unsigned __stdcall AdsIsRecordInAOF(int hTable, unsigned ulRecordNum, PWord pusIsInAOF);
extern "C" unsigned __stdcall AdsIsRecordLocked(int hTable, unsigned ulRec, PWord pbLocked);
extern "C" unsigned __stdcall AdsIsRecordVisible(int hObj, PWord pbVisible);
extern "C" unsigned __stdcall AdsIsServerLoaded(char * pucServer, PWord pbLoaded);
extern "C" unsigned __stdcall AdsIsTableEncrypted(int hTable, PWord pbEncrypted);
extern "C" unsigned __stdcall AdsIsTableLocked(int hTable, PWord pbLocked);
extern "C" unsigned __stdcall AdsLocate(int hTable, char * pucExpr, Word bForward, PWord pbFound);
extern "C" unsigned __stdcall AdsLockRecord(int hTable, unsigned ulRec);
extern "C" unsigned __stdcall AdsLockTable(int hTable);
extern "C" unsigned __stdcall AdsLookupKey(int hIndex, char * pucKey, Word usKeyLen, Word usDataType, PWord pbFound);
extern "C" unsigned __stdcall AdsMgConnect(char * pucServerName, char * pucUserName, char * pucPassword, PADSHANDLE phMgmtHandle);
extern "C" unsigned __stdcall AdsMgDisconnect(int hConnect);
extern "C" unsigned __stdcall AdsMgDumpInternalTables(int hMgmtHandle);
extern "C" unsigned __stdcall AdsMgGetActivityInfo(int hMgmtHandle, pADS_MGMT_ACTIVITY_INFO pstActivityInfo, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetCommStats(int hMgmtHandle, pADS_MGMT_COMM_STATS pstCommStats, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetConfigInfo(int hMgmtHandle, pADS_MGMT_CONFIG_PARAMS pstConfigValues, PWord pusConfigValuesStructSize, pADS_MGMT_CONFIG_MEMORY pstConfigMemory, PWord pusConfigMemoryStructSize);
extern "C" unsigned __stdcall AdsMgGetInstallInfo(int hMgmtHandle, pADS_MGMT_INSTALL_INFO pstInstallInfo, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetLockOwner(int hMgmtHandle, char * pucTableName, unsigned ulRecordNumber, pADS_MGMT_USER_INFO pstUserInfo, PWord pusStructSize, PWord pusLockType);
extern "C" unsigned __stdcall AdsMgGetLocks(int hMgmtHandle, char * pucTableName, char * pucUserName, Word usConnNumber, PADSMgLocksArray astRecordInfo, PWord pusArrayLen, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetOpenIndexes(int hMgmtHandle, char * pucTableName, char * pucUserName, Word usConnNumber, PADSMgIndexArray astOpenIndexInfo, PWord pusArrayLen, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetOpenTables(int hMgmtHandle, char * pucUserName, Word usConnNumber, PADSMgTableArray astOpenTableInfo, PWord pusArrayLen, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetServerType(int hMgmtHandle, PWord pusServerType);
extern "C" unsigned __stdcall AdsMgGetUserNames(int hMgmtHandle, char * pucFileName, PADSMgUserArray astUserInfo, PWord pusArrayLen, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgGetWorkerThreadActivity(int hMgmtHandle, PADSMgThreadsArray astThreadActivity, PWord pusArrayLen, PWord pusStructSize);
extern "C" unsigned __stdcall AdsMgKillUser(int hMgmtHandle, char * pucUserName, Word usConnNumber);
extern "C" unsigned __stdcall AdsMgResetCommStats(int hMgmtHandle);
extern "C" unsigned __stdcall AdsOpenIndex(int hTable, char * pucName, PADSIndexArray ahIndex, PWord pusArrayLen);
extern "C" unsigned __stdcall AdsOpenTable(int hConnect, char * pucName, char * pucAlias, Word usTableType, Word usCharType, Word usLockType, Word usCheckRights, unsigned ulOptions, PADSHANDLE phTable);
extern "C" unsigned __stdcall AdsPackTable(int hTable);
extern "C" unsigned __stdcall AdsPrepareSQL(int hStatement, char * pucSQL);
extern "C" unsigned __stdcall AdsRecallRecord(int hTable);
extern "C" unsigned __stdcall AdsRecallAllRecords(int hTable);
extern "C" unsigned __stdcall AdsRefreshAOF(int hTable);
extern "C" unsigned __stdcall AdsRefreshRecord(int hTable);
extern "C" unsigned __stdcall AdsRegisterCallbackFunction(TCallbackFunction Callback, unsigned ulCallbackID);
extern "C" unsigned __stdcall AdsRegisterProgressCallback(TProgressCallback Callback);
extern "C" unsigned __stdcall AdsRegisterSQLAbortFunc(TSQLAbortFunc Callback);
extern "C" unsigned __stdcall AdsReindex(int hTable);
extern "C" unsigned __stdcall AdsReindex61(int hTable, unsigned ulPageSize);
extern "C" unsigned __stdcall AdsReindexFTS(int hTable, unsigned ulPageSize);
extern "C" unsigned __stdcall AdsResetConnection(int hConnect);
extern "C" unsigned __stdcall AdsRollbackTransaction(int hConnect);
extern "C" unsigned __stdcall AdsSeek(int hIndex, char * pucKey, Word usKeyLen, Word usDataType, Word usSeekType, PWord pbFound);
extern "C" unsigned __stdcall AdsSeekLast(int hIndex, char * pucKey, Word usKeyLen, Word usDataType, PWord pbFound);
extern "C" unsigned __stdcall AdsSetAOF(int hTable, char * pucFilter, Word usOptions);
extern "C" unsigned __stdcall AdsSetBinary(int hTable, char * pucFldName, Word usBinaryType, unsigned ulTotalLength, unsigned ulOffset, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsSetCollationLang(char * pucLang);
extern "C" unsigned __stdcall AdsSetDate(int hObj, char * pucFldName, char * pucValue, Word usLen);
extern "C" unsigned __stdcall AdsSetDateFormat(char * pucFormat);
extern "C" unsigned __stdcall AdsSetDateFormat60(int hConnect, char * pucFormat);
extern "C" unsigned __stdcall AdsSetDecimals(Word usDecimals);
extern "C" unsigned __stdcall AdsSetDefault(char * pucDefault);
extern "C" unsigned __stdcall AdsSetDouble(int hObj, char * pucFldName, double dValue);
extern "C" unsigned __stdcall AdsSetEmpty(int hObj, char * pucFldName);
extern "C" unsigned __stdcall AdsSetEpoch(Word usCentury);
extern "C" unsigned __stdcall AdsSetExact22(int hObj, Word bExact);
extern "C" unsigned __stdcall AdsSetExact(Word bExact);
extern "C" unsigned __stdcall AdsSetField(int hObj, char * pucFldName, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsSetFilter(int hTable, char * pucFilter);
extern "C" unsigned __stdcall AdsSetHandleLong(int hObj, unsigned ulVal);
extern "C" unsigned __stdcall AdsSetJulian(int hObj, char * pucFldName, int lDate);
extern "C" unsigned __stdcall AdsSetLogical(int hObj, char * pucFldName, Word bValue);
extern "C" unsigned __stdcall AdsSetLong(int hObj, char * pucFldName, int lValue);
extern "C" unsigned __stdcall AdsSetLongLong(int hObj, char * pucFldName, __int64 qValue);
extern "C" unsigned __stdcall AdsSetMilliseconds(int hObj, char * pucFldName, int lTime);
extern "C" unsigned __stdcall AdsSetMoney(int hObj, char * pucFldName, __int64 qValue);
extern "C" unsigned __stdcall AdsSetRecord(int hObj, char * pucRec, unsigned ulLen);
extern "C" unsigned __stdcall AdsSetRelKeyPos(int hIndex, double dPos);
extern "C" unsigned __stdcall AdsSetRelation(int hTableParent, int hIndexChild, char * pucExpr);
extern "C" unsigned __stdcall AdsSetScope(int hIndex, Word usScopeOption, char * pucScope, Word usScopeLen, Word usDataType);
extern "C" unsigned __stdcall AdsSetScopedRelation(int hTableParent, int hIndexChild, char * pucExpr);
extern "C" unsigned __stdcall AdsSetSearchPath(char * pucPath);
extern "C" unsigned __stdcall AdsSetServerType(Word usServerOptions);
extern "C" unsigned __stdcall AdsSetShort(int hObj, char * pucFldName, short sValue);
extern "C" unsigned __stdcall AdsSetString(int hObj, char * pucFldName, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsSetTime(int hObj, char * pucFldName, char * pucValue, Word usLen);
extern "C" unsigned __stdcall AdsSetTimeStamp(int hObj, char * pucFldName, char * pucBuf, unsigned ulLen);
extern "C" unsigned __stdcall AdsShowDeleted(Word bShowDeleted);
extern "C" unsigned __stdcall AdsShowError(char * pucTitle);
extern "C" unsigned __stdcall AdsSkip(int hObj, int lRecs);
extern "C" unsigned __stdcall AdsStmtConstrainUpdates(int hStatement, Word usConstrain);
extern "C" unsigned __stdcall AdsStmtSetTableCharType(int hStatement, Word usCharType);
extern "C" unsigned __stdcall AdsStmtSetTableLockType(int hStatement, Word usLockType);
extern "C" unsigned __stdcall AdsStmtSetTableReadOnly(int hStatement, Word usReadOnly);
extern "C" unsigned __stdcall AdsStmtSetTableRights(int hStatement, Word usCheckRights);
extern "C" unsigned __stdcall AdsStmtSetTableType(int hStatement, Word usTableType);
extern "C" unsigned __stdcall AdsStmtEnableEncryption(int hStatement, char * pcPassword);
extern "C" unsigned __stdcall AdsStmtDisableEncryption(int hStatement);
extern "C" unsigned __stdcall AdsStmtSetTablePassword(int hStatement, char * pcTableName, char * pcPassword);
extern "C" unsigned __stdcall AdsStmtClearTablePasswords(int hStatement);
extern "C" unsigned __stdcall AdsStmtReadAllColumns(int hStatement, Word usReadColumns);
extern "C" unsigned __stdcall AdsThreadExit(void);
extern "C" unsigned __stdcall AdsUnlockRecord(int hTable, unsigned ulRec);
extern "C" unsigned __stdcall AdsUnlockTable(int hTable);
extern "C" unsigned __stdcall AdsIsEncryptionEnabled(int hTable, PWord pusIsValid);
extern "C" unsigned __stdcall AdsWriteAllRecords(void);
extern "C" unsigned __stdcall AdsWriteRecord(int hTable);
extern "C" unsigned __stdcall AdsZapTable(int hTable);
extern "C" unsigned __stdcall AdsIsIndexUserDefined(int hIndex, PUNSIGNED16 pbUserDefined);
extern "C" unsigned __stdcall AdsRegisterUDF(int hObj, Word usType, TUDFFunc Callback);
extern "C" unsigned __stdcall AdsDisableLocalConnections(void);
extern "C" unsigned __stdcall AdsGetLastAutoinc(int hObj, PUNSIGNED32 pulAutoincVal);
extern "C" unsigned __stdcall AdsFindClose(int hConnect, int lHandle);
extern "C" unsigned __stdcall AdsFindFirstTable(int hConnect, char * pucFileMask, char * pucFirstFile, PWord pusFileLen, PSIGNED32 lHandle);
extern "C" unsigned __stdcall AdsFindNextTable(int hConnect, int lHandle, char * pucFileName, PWord pusFileLen);
extern "C" unsigned __stdcall AdsFindFirstTable62(int hConnect, char * pucFileMask, char * pucFirstDD, PWord pusDDLen, char * pucFirstFile, PWord pusFileLen, PSIGNED32 lHandle);
extern "C" unsigned __stdcall AdsFindNextTable62(int hConnect, int lHandle, char * pucDDName, PWord pusDDLen, char * pucFileName, PWord pusFileLen);
extern "C" unsigned __stdcall AdsGetNumParams(int hStatement, PWord pusNumParams);
extern "C" unsigned __stdcall AdsRestructureTable(int hObj, char * pucName, char * pucPassword, Word usTableType, Word usCharType, Word usLockType, Word usCheckRights, char * pucAddFields, char * pucDeleteFields, char * pucChangeFields);
extern "C" unsigned __stdcall AdsGetSQLStatementHandle(int hCursor, PADSHANDLE phStmt);
extern "C" unsigned __stdcall AdsGetSQLStatement(int hStmt, char * pucSQL, PWord pusLen);
extern "C" unsigned __stdcall AdsFlushFileBuffers(int hObj);
extern "C" unsigned __stdcall AdsDDDeployDatabase(char * pucDestination, char * pucDestinationPassword, char * pucSource, char * pucSourcePassword, Word usServerTypes, Word usValidateOption, Word usBackupFiles, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDGetPermissions(int hDBConn, char * pucGrantee, Word usObjectType, char * pucObjectName, char * pucParentName, Word usGetInherited, PUNSIGNED32 pulPermissions);
extern "C" unsigned __stdcall AdsDDGrantPermission(int hAdminConn, Word usObjectType, char * pucObjectName, char * pucParentName, char * pucGrantee, unsigned ulPermissions);
extern "C" unsigned __stdcall AdsDDRevokePermission(int hAdminConn, Word usObjectType, char * pucObjectName, char * pucParentName, char * pucGrantee, unsigned ulPermissions);
extern "C" unsigned __stdcall AdsDDCreateRefIntegrity62(int hDictionary, char * pucRIName, char * pucFailTableName, char * pucParentTableName, char * pucParentTagName, char * pucChildTableName, char * pucChildTagName, Word usUpdateRule, Word usDeleteRule, char * pucNoPrimaryKeyError, char * pucCascadeError);
extern "C" unsigned __stdcall AdsDDGetLinkProperty(int hConnect, char * pucLinkName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDCreateLink(int hDBConn, char * pucLinkAlias, char * pucLinkedDDPath, char * pucUserName, char * pucPassword, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDModifyLink(int hDBConn, char * pucLinkAlias, char * pucLinkedDDPath, char * pucUserName, char * pucPassword, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDDropLink(int hDBConn, char * pucLinkedDD, Word usDropGlobal);
extern "C" unsigned __stdcall AdsGetActiveLinkInfo(int hDBConn, Word usLinkNum, char * pucLinkInfo, PUNSIGNED16 pusBufferLen);
extern "C" unsigned __stdcall AdsGetNumActiveLinks(int hDBConn, PUNSIGNED16 pusNumLinks);
extern "C" unsigned __stdcall AdsVerifySQL(int hStatement, char * pucSQL);
extern "C" unsigned __stdcall AdsEnableUniqueEnforcement(int hConnection);
extern "C" unsigned __stdcall AdsDisableUniqueEnforcement(int hConnection);
extern "C" unsigned __stdcall AdsEnableRI(int hConnection);
extern "C" unsigned __stdcall AdsDisableRI(int hConnection);
extern "C" unsigned __stdcall AdsEnableAutoIncEnforcement(int hConnection);
extern "C" unsigned __stdcall AdsDisableAutoIncEnforcement(int hConnection);
extern "C" unsigned __stdcall AdsDDCreateTrigger(int hDictionary, char * pucName, char * pucTableName, unsigned ulTriggerType, unsigned ulEventTypes, unsigned ulContainerType, char * pucContainer, char * pucFunctionName, unsigned ulPriority, char * pucComments, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDRemoveTrigger(int hDictionary, char * pucName);
extern "C" unsigned __stdcall AdsDDGetTriggerProperty(int hDictionary, char * pucTriggerName, Word usPropertyID, void * pvproperty, PUNSIGNED16 usPropertyLen);
extern "C" unsigned __stdcall AdsDDSetTriggerProperty(int hDictionary, char * pucTriggerName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsIsConnectionAlive(int hConnect, PWord pbConnectionIsAlive);
extern "C" unsigned __stdcall AdsDDMoveObjectFile(int hDictionary, Word usObjectType, char * pucObjectName, char * pucNewPath, char * pucIndexFiles, char * pucParent, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDCreatePublication(int hDBConn, char * pucPublicationName, char * pucComments, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDSetPublicationProperty(int hDBConn, char * pucPublicationName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDGetPublicationProperty(int hDBConn, char * pucPublicationName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDDeletePublication(int hDBConn, char * pucPublicationName);
extern "C" unsigned __stdcall AdsDDCreateArticle(int hDBConn, char * pucPublicationName, char * pucObjectName, char * pucRowIdentColumns, char * pucFilter, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDSetArticleProperty(int hDBConn, char * pucPublicationName, char * pucObjectName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDGetArticleProperty(int hDBConn, char * pucPublicationName, char * pucObjectName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDDeleteArticle(int hDBConn, char * pucPublicationName, char * pucObjectName);
extern "C" unsigned __stdcall AdsDDCreateSubscription(int hDBConn, char * pucSubscriptionName, char * pucPublicationName, char * pucTarget, char * pucUser, char * pucPassword, char * pucReplicationQueue, Word usForward, char * pucComments, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDSetSubscriptionProperty(int hDBConn, char * pucSubscriptionName, Word usPropertyID, void * pvProperty, Word usPropertyLen);
extern "C" unsigned __stdcall AdsDDGetSubscriptionProperty(int hDBConn, char * pucSubscriptionName, Word usPropertyID, void * pvProperty, PUNSIGNED16 pusPropertyLen);
extern "C" unsigned __stdcall AdsDDDeleteSubscription(int hDBConn, char * pucSubscriptionName);
extern "C" unsigned __stdcall AdsRollbackTransaction80(int hConnect, char * pucSavepoint, unsigned ulOptions);
extern "C" unsigned __stdcall AdsCreateSavepoint(int hConnect, char * pucSavepoint, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDDisableTriggers(int hDictionary, char * pucObjectName, char * pucParent, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDEnableTriggers(int hDictionary, char * pucObjectName, char * pucParent, unsigned ulOptions);
extern "C" unsigned __stdcall AdsDDFreeTable(char * pucTableName, char * pucPassword);
extern "C" unsigned __stdcall AdsDDSetIndexProperty(int hAdminConn, char * pucTableName, char * pucIndexName, Word usPropertyID, void * pvProperty, Word usPropertyLen);

}	/* namespace Ace */
using namespace Ace;
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Ace
