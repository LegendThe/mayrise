// Copyright (c) 2001-2005 Extended Systems, Inc.
// Portions Copyright (c) 2005-2007, iAnywhere Solutions, Inc.
// All rights reserved. All unpublished rights reserved.
//
// This source code can be used, modified, or copied by the licensee as long as
// the modifications (or the new binary resulting from a copy or modification of
// this source code) are used with Extended Systems' products. The source code
// is not redistributable as source code, but is redistributable as compiled
// and linked binary code. If the source code is used, modified, or copied by
// the licensee, Extended Systems Inc. reserves the right to receive from the
// licensee, upon request, at no cost to Extended Systems Inc., the modifications.
//
// Extended Systems Inc. does not warrant that the operation of this software
// will meet your requirements or that the operation of the software will be
// uninterrupted, be error free, or that defects in software will be corrected.
// This software is provided "AS IS" without warranty of any kind. The entire
// risk as to the quality and performance of this software is with the purchaser.
// If this software proves defective or inadequate, purchaser assumes the entire
// cost of servicing or repair. No oral or written information or advice given
// by an Extended Systems Inc. representative shall create a warranty or in any
// way increase the scope of this warranty.

{*******************************************************************************
* Source File : ACE.PAS
* Description : This is the Delphi/Kylix header file for Advantage Windows
*               and Linux clients based upon the Advantage Client Engine.
*               It contains the type definitions and prototypes for all APIs.
*               This exposes the Advantage Client Engine API as the pascal
*               unit ACE.
* Notes       :
*******************************************************************************}
unit ace;

{$INCLUDE versions.inc}

{$IFDEF ADSDELPHI7}

   {$WARN UNSAFE_TYPE OFF}
   {$WARN UNSAFE_CODE OFF}
   {$WARN UNSAFE_CAST OFF}

{$ENDIF}


interface

const
   {$ifdef WIN32}
   ACE_LIB                 = 'ACE32.DLL';
   ADS_PATH_DELIMITER      = '\';
   {$endif}
   {$ifdef LINUX}
   ACE_LIB                 = 'libace.so.8.10';
   ADS_PATH_DELIMITER      = '/';
   {$endif}

   { Logical constants }
   ADS_FALSE               = 0;
   ADS_TRUE                = 1;

   { This is for parameters to routines that accept a default setting }
   ADS_DEFAULT             = 0;

   { character set types }
   ADS_ANSI                = 1;
   ADS_OEM                 = 2;

   { rights checking options }
   ADS_CHECKRIGHTS         = 1;
   ADS_IGNORERIGHTS        = 2;

   { options for connecting to Advantage servers }
   ADS_INC_USERCOUNT          = $00000001;
   ADS_STORED_PROC_CONN       = $00000002;
   ADS_COMPRESS_ALWAYS        = $00000004;
   ADS_COMPRESS_NEVER         = $00000008;
   ADS_COMPRESS_INTERNET      = $0000000C;
   ADS_REPLICATION_CONNECTION = $00000010;
   ADS_UDP_IP_CONNECTION      = $00000020;
   ADS_IPX_CONNECTION         = $00000040;
   ADS_TCP_IP_CONNECTION      = $00000080;
   ADS_TCP_IP_V6_CONNECTION   = $00000100;

   { options for opening tables - can be ORed together }
   ADS_EXCLUSIVE                     = $00000001;
   ADS_READONLY                      = $00000002;
   ADS_SHARED                        = $00000004;
   ADS_CLIPPER_MEMOS                 = $00000008;
   ADS_TABLE_PERM_READ               = $00000010;
   ADS_TABLE_PERM_UPDATE             = $00000020;
   ADS_TABLE_PERM_INSERT             = $00000040;
   ADS_TABLE_PERM_DELETE             = $00000080;
   ADS_REINDEX_ON_COLLATION_MISMATCH = $00000100;
   ADS_IGNORE_COLLATION_MISMATCH     = $00000200;
   ADS_FREE_TABLE                    = $00001000;
   ADS_TEMP_TABLE                    = $00002000;
   ADS_DICTIONARY_BOUND_TABLE        = $00004000;  // Mutually exclusive with ADS_FREE_TABLE or ADS_TEMP_TABLE

   { Options for creating indexes - can be ORed together }
   ADS_ASCENDING           = $00000000;
   ADS_UNIQUE              = $00000001;
   ADS_COMPOUND            = $00000002;
   ADS_CUSTOM              = $00000004;
   ADS_DESCENDING          = $00000008;
   ADS_USER_DEFINED        = $00000010;
   { 020 - 200 FTS index options below }
   ADS_NOT_AUTO_OPEN       = $00000400;     { Don't make this an auto open index in data dictionary }

   { Options specifically for FTS indexes }
   ADS_FTS_INDEX           = $00000020;     { This is implied for AdsCreateFTSIndex }
   ADS_FTS_FIXED           = $00000040;     { Do not maintain the index with record updates }
   ADS_FTS_CASE_SENSITIVE  = $00000080;     { Make the index case sensitive }
   ADS_FTS_KEEP_SCORE      = $00000100;     { Track word counts in the index for faster SCORE() }
   ADS_FTS_PROTECT_NUMBERS = $00000200;     { Don't break numbers on periods and commas }

   { Options for returning string values }
   ADS_NONE                = $00000000;
   ADS_LTRIM               = $00000001;
   ADS_RTRIM               = $00000002;
   ADS_TRIM                = $00000003;

   { locking compatibility }
   ADS_COMPATIBLE_LOCKING  = 0;
   ADS_PROPRIETARY_LOCKING = 1;

   { settings for seeks }
   ADS_SOFTSEEK            = $0001;
   ADS_HARDSEEK            = $0002;
   ADS_SEEKGT              = $0004;

   { data types for seeks (and scopes) }
   ADS_RAWKEY              = 1;   { no conversion performed on given data }
   ADS_STRINGKEY           = 2;   { data given as a string }
   ADS_DOUBLEKEY           = 4;   { data is a pointer to 8 byte double }

   { For retrieving and settings scopes }
   ADS_TOP                 = 1;
   ADS_BOTTOM              = 2;

   { for calls that can optionally use filters }
   ADS_RESPECTFILTERS      = $0001;
   ADS_IGNOREFILTERS       = $0002;
   ADS_RESPECTSCOPES       = $0003;

   { This value is only used with GetRecordCount:  It can be ORed in with the
     ignore filter value to force a read from the table header to get the most
     current record count. }
   ADS_REFRESHCOUNT        = $0004;

   { AdsIsServerLoaded constants }
   ADS_LOCAL_SERVER        = $0001;
   ADS_REMOTE_SERVER       = $0002;
   ADS_AIS_SERVER          = $0004;

   { Advantage Client Engine Handle types }
   ADS_CONNECTION            = 1;
   ADS_TABLE                 = 2;
   ADS_INDEX_ORDER           = 3;
   ADS_STATEMENT             = 4;
   ADS_CURSOR                = 5;
   ADS_DATABASE_CONNECTION   = 6;
   ADS_DICTIONARY_CONNECTION = 6; {This constant name is obsolete }
   ADS_SYS_ADMIN_CONNECTION  = 7;
   ADS_DICTIONARY            = 7; {This constant name is obsolete }
   ADS_FTS_INDEX_ORDER       = 8;

   { ACE Cursor ReadOnly settings }
   ADS_CURSOR_READONLY     = 1;
   ADS_CURSOR_READWRITE    = 2;

   { ACE Cursor Constrain settings }
   ADS_CONSTRAIN           = 1;
   ADS_NO_CONSTRAIN        = 2;

   { Disable server query optimization }
   ADS_NO_OPTIMIZATION     = 1;

   { Select Field Read settings (read all or selected fields only in live cursors) }
   ADS_READ_ALL_COLUMNS    = 1;
   ADS_READ_SELECT_COLUMNS = 2;

   { Data dictionary new contraint property validation options }
   ADS_NO_VALIDATE           = 0;  { Do not validate records against the new constraint }
   ADS_VALIDATE_NO_SAVE      = 1;  { Delete record not meeting the constraint from the table, no save }
   ADS_VALIDATE_WRITE_FAIL   = 2;  { Validate the records against the new constraint and overwrite
                                     the fail table with records not meeting the constraint. }
   ADS_VALIDATE_APPEND_FAIL  = 3;  { Validate the records against the new constraint and append
                                     the failed records into the fail table }
   ADS_VALIDATE_RETURN_ERROR = 4;  { Validate the records against the new constraint and return
                                     error if there is any record not meeting the constraint }

   { Possible result values from AdsCompareBookmarks. }
   ADS_CMP_LESS     = -1;
   ADS_CMP_EQUAL     = 0;
   ADS_CMP_GREATER   = 1;

   { Property values for the AdsGetConnectionProperty API }
   ADS_CONNECTIONPROP_USERNAME  =  0;
   ADS_CONNECTIONPROP_PASSWORD  =  1;

   { Options for the AdsGetRecordCRC API }
   ADS_CRC_LOCALLY = 1;
   ADS_CRC_IGNOREMEMOPAGES = 2;

   { Success return code }
   AE_SUCCESS              = 0;

   {Error Codes }
   AE_ALLOCATION_FAILED            = 5001;
   AE_COMM_MISMATCH                = 5002;
   AE_DATA_TOO_LONG                = 5003;
   AE_FILE_NOT_FOUND               = 5004;
   AE_INSUFFICIENT_BUFFER          = 5005;
   AE_INVALID_BOOKMARK             = 5006;
   AE_INVALID_CALLBACK             = 5007;
   AE_INVALID_CENTURY              = 5008;
   AE_INVALID_DATEFORMAT           = 5009;
   AE_INVALID_DECIMALS             = 5010;
   AE_INVALID_EXPRESSION           = 5011;
   AE_INVALID_FIELDDEF             = 5012;
   AE_INVALID_FILTER_OPTION        = 5013;
   AE_INVALID_INDEX_HANDLE         = 5014;
   AE_INVALID_INDEX_NAME           = 5015;
   AE_INVALID_INDEX_ORDER_NAME     = 5016;
   AE_INVALID_INDEX_TYPE           = 5017;
   AE_INVALID_HANDLE               = 5018;
   AE_INVALID_OPTION               = 5019;
   AE_INVALID_PATH                 = 5020;
   AE_INVALID_POINTER              = 5021;
   AE_INVALID_RECORD_NUMBER        = 5022;
   AE_INVALID_TABLE_HANDLE         = 5023;
   AE_INVALID_CONNECTION_HANDLE    = 5024;
   AE_INVALID_TABLETYPE            = 5025;
   AE_INVALID_WORKAREA             = 5026;
   AE_INVALID_CHARSETTYPE          = 5027;
   AE_INVALID_LOCKTYPE             = 5028;
   AE_INVALID_RIGHTSOPTION         = 5029;
   AE_INVALID_FIELDNUMBER          = 5030;
   AE_INVALID_KEY_LENGTH           = 5031;
   AE_INVALID_FIELDNAME            = 5032;
   AE_NO_DRIVE_CONNECTION          = 5033;
   AE_FILE_NOT_ON_SERVER           = 5034;
   AE_LOCK_FAILED                  = 5035;
   AE_NO_CONNECTION                = 5036;
   AE_NO_FILTER                    = 5037;
   AE_NO_SCOPE                     = 5038;
   AE_NO_TABLE                     = 5039;
   AE_NO_WORKAREA                  = 5040;
   AE_NOT_FOUND                    = 5041;
   AE_NOT_IMPLEMENTED              = 5042;
   AE_MAX_THREADS_EXCEEDED         = 5043;
   AE_START_THREAD_FAIL            = 5044;
   AE_TOO_MANY_INDEXES             = 5045;
   AE_TOO_MANY_TAGS                = 5046;
   AE_TRANS_OUT_OF_SEQUENCE        = 5047;
   AE_UNKNOWN_ERRCODE              = 5048;
   AE_UNSUPPORTED_LANGUAGE         = 5049;
   AE_NAME_TOO_LONG                = 5050;
   AE_DUPLICATE_ALIAS              = 5051;
   AE_TABLE_CLOSED_IN_TRANSACTION  = 5053;
   AE_PERMISSION_DENIED            = 5054;
   AE_STRING_NOT_FOUND             = 5055;
   AE_UNKNOWN_CHAR_SET             = 5056;
   AE_INVALID_OEM_CHAR_FILE        = 5057;
   AE_INVALID_MEMO_BLOCK_SIZE      = 5058;
   AE_NO_FILE_FOUND                = 5059;
   AE_NO_INF_LOCK                  = 5060;
   AE_INF_FILE_ERROR               = 5061;
   AE_RECORD_NOT_LOCKED            = 5062;
   AE_ILLEGAL_COMMAND_DURING_TRANS = 5063;
   AE_TABLE_NOT_SHARED             = 5064;
   AE_INDEX_ALREADY_OPEN           = 5065;
   AE_INVALID_FIELD_TYPE           = 5066;
   AE_TABLE_NOT_EXCLUSIVE          = 5067;
   AE_NO_CURRENT_RECORD            = 5068;
   AE_PRECISION_LOST               = 5069;
   AE_INVALID_DATA_TYPE            = 5070;
   AE_DATA_TRUNCATED               = 5071;
   AE_TABLE_READONLY               = 5072;
   AE_INVALID_RECORD_LENGTH        = 5073;
   AE_NO_ERROR_MESSAGE             = 5074;
   AE_INDEX_SHARED                 = 5075;
   AE_INDEX_EXISTS                 = 5076;
   AE_CYCLIC_RELATION              = 5077;
   AE_INVALID_RELATION             = 5078;
   AE_INVALID_DAY                  = 5079;
   AE_INVALID_MONTH                = 5080;
   AE_CORRUPT_TABLE                = 5081;
   AE_INVALID_BINARY_OFFSET        = 5082;
   AE_BINARY_FILE_ERROR            = 5083;
   AE_INVALID_DELETED_BYTE_VALUE   = 5084;
   AE_NO_PENDING_UPDATE            = 5085;
   AE_PENDING_UPDATE               = 5086;
   AE_TABLE_NOT_LOCKED             = 5087;
   AE_CORRUPT_INDEX                = 5088;
   AE_AUTOOPEN_INDEX               = 5089;
   AE_SAME_TABLE                   = 5090;
   AE_INVALID_IMAGE                = 5091;
   AE_COLLATION_SEQUENCE_MISMATCH  = 5092;
   AE_INVALID_INDEX_ORDER          = 5093;
   AE_TABLE_CACHED                 = 5094;
   AE_INVALID_DATE                 = 5095;
   AE_ENCRYPTION_NOT_ENABLED       = 5096;
   AE_INVALID_PASSWORD             = 5097;
   AE_TABLE_ENCRYPTED              = 5098;
   AE_SERVER_MISMATCH              = 5099;
   AE_INVALID_USERNAME             = 5100;
   AE_INVALID_VALUE                = 5101;
   AE_INVALID_CONTINUE             = 5102;
   AE_UNRECOGNIZED_VERSION         = 5103;
   AE_RECORD_ENCRYPTED             = 5104;
   AE_UNRECOGNIZED_ENCRYPTION      = 5105;
   AE_INVALID_SQLSTATEMENT_HANDLE  = 5106;
   AE_INVALID_SQLCURSOR_HANDLE     = 5107;
   AE_NOT_PREPARED                 = 5108;
   AE_CURSOR_NOT_CLOSED            = 5109;
   AE_INVALID_SQL_PARAM_NUMBER     = 5110;
   AE_INVALID_SQL_PARAM_NAME       = 5111;
   AE_INVALID_COLUMN_NUMBER        = 5112;
   AE_INVALID_COLUMN_NAME          = 5113;
   AE_INVALID_READONLY_OPTION      = 5114;
   AE_IS_CURSOR_HANDLE             = 5115;
   AE_INDEX_EXPR_NOT_FOUND         = 5116;
   AE_NOT_DML                      = 5117;
   AE_INVALID_CONSTRAIN_TYPE       = 5118;
   AE_INVALID_CURSORHANDLE         = 5119;
   AE_OBSOLETE_FUNCTION            = 5120;
   AE_TADSDATASET_GENERAL          = 5121;
   AE_UDF_OVERWROTE_BUFFER         = 5122;
   AE_INDEX_UDF_NOT_SET            = 5123;
   AE_CONCURRENT_PROBLEM           = 5124;
   AE_INVALID_DICTIONARY_HANDLE    = 5125;
   AE_INVALID_PROPERTY_ID          = 5126;
   AE_INVALID_PROPERTY             = 5127;
   AE_DICTIONARY_ALREADY_EXISTS    = 5128;
   AE_INVALID_FIND_HANDLE          = 5129;
   AE_DD_REQUEST_NOT_COMPLETED     = 5130;
   AE_INVALID_OBJECT_ID            = 5131;
   AE_INVALID_OBJECT_NAME          = 5132;
   AE_INVALID_PROPERTY_LENGTH      = 5133;
   AE_INVALID_KEY_OPTIONS          = 5134;
   AE_CONSTRAINT_VALIDATION_ERROR  = 5135;
   AE_INVALID_OBJECT_TYPE          = 5136;
   AE_NO_OBJECT_FOUND              = 5137;
   AE_PROPERTY_NOT_SET             = 5138;
   AE_NO_PRIMARY_KEY_EXISTS        = 5139;
   AE_LOCAL_CONN_DISABLED          = 5140;
   AE_RI_RESTRICT                  = 5141;
   AE_RI_CASCADE                   = 5142;
   AE_RI_FAILED                    = 5143;
   AE_RI_CORRUPTED                 = 5144;
   AE_RI_UNDO_FAILED               = 5145;
   AE_RI_RULE_EXISTS               = 5146;
   AE_COLUMN_CANNOT_BE_NULL        = 5147;
   AE_MIN_CONSTRAINT_VIOLATION     = 5148;
   AE_MAX_CONSTRAINT_VIOLATION     = 5149;
   AE_RECORD_CONSTRAINT_VIOLATION  = 5150;
   AE_CANNOT_DELETE_TEMP_INDEX     = 5151;
   AE_RESTRUCTURE_FAILED           = 5152;
   AE_INVALID_STATEMENT            = 5153;
   AE_STORED_PROCEDURE_FAILED      = 5154;
   AE_INVALID_DICTIONARY_FILE      = 5155;
   AE_NOT_MEMBER_OF_GROUP          = 5156;
   AE_ALREADY_MEMBER_OF_GROUP      = 5157;
   AE_INVALID_OBJECT_RIGHT         = 5158;
   AE_INVALID_OBJECT_PERMISSION    = 5158;    {* Note that this is same as above. The word
                                               * permission is more commonly used.
                                               *}
   AE_CANNOT_OPEN_DATABASE_TABLE   = 5159;
   AE_INVALID_CONSTRAINT           = 5160;
   AE_NOT_ADMINISTRATOR            = 5161;
   AE_NO_TABLE_ENCRYPTION_PASSWORD = 5162;
   AE_TABLE_NOT_ENCRYPTED          = 5163;
   AE_INVALID_ENCRYPTION_VERSION   = 5164;
   AE_NO_STORED_PROC_EXEC_RIGHTS   = 5165;
   AE_DD_UNSUPPORTED_DEPLOYMENT    = 5166;
   AE_INFO_AUTO_CREATION_OCCURRED  = 5168;
   AE_INFO_COPY_MADE_BY_CLIENT     = 5169;
   AE_DATABASE_REQUIRE_NEW_SERVER  = 5170;
   AE_COLUMN_PERMISSION_DENIED     = 5171;
   AE_DATABASE_REQUIRE_NEW_CLIENT  = 5172;
   AE_INVALID_LINK_NUMBER          = 5173;
   AE_LINK_ACTIVATION_FAILED       = 5174;
   AE_INDEX_COLLATION_MISMATCH     = 5175;
   AE_ILLEGAL_USER_OPERATION       = 5176;
   AE_TRIGGER_FAILED               = 5177;
   AE_NO_ASA_FUNCTION_FOUND        = 5178;
   AE_VALUE_OVERFLOW               = 5179;
   AE_UNRECOGNIZED_FTS_VERSION     = 5180;
   AE_TRIG_CREATION_FAILED         = 5181;
   AE_MEMTABLE_SIZE_EXCEEDED       = 5182;
   AE_OUTDATED_CLIENT_VERSION      = 5183;
   AE_FREE_TABLE                   = 5184;
   AE_LOCAL_CONN_RESTRICTED        = 5185;
   AE_OLD_RECORD                   = 5186;
   AE_QUERY_NOT_ACTIVE             = 5187;
   AE_KEY_EXCEEDS_PAGE_SIZE        = 5188;
   AE_TABLE_FOUND                  = 5189;
   AE_TABLE_NOT_FOUND              = 5190;
   AE_LOCK_OBJECT                  = 5191;
   AE_INVALID_REPLICATION_IDENT    = 5192;
   AE_ILLEGAL_COMMAND_DURING_BACKUP = 5193;
   AE_NO_MEMO_FILE                 = 5194;
   AE_SUBSCRIPTION_QUEUE_NOT_EMPTY = 5195;
   AE_UNABLE_TO_DISABLE_TRIGGERS   = 5196;
   AE_UNABLE_TO_ENABLE_TRIGGERS    = 5197;
   AE_BACKUP                       = 5198;
   AE_FREETABLEFAILED              = 5199;
   AE_BLURRY_SNAPSHOT              = 5200;
   AE_INVALID_VERTICAL_FILTER      = 5201;

   { Supported file types }
   ADS_DATABASE_TABLE      = ADS_DEFAULT;
   ADS_NTX                 = 1;
   ADS_CDX                 = 2;
   ADS_ADT                 = 3;

   { for retrieving file names of tables }
   ADS_BASENAME            = 1;
   ADS_BASENAMEANDEXT      = 2;
   ADS_FULLPATHNAME        = 3;
   ADS_DATADICTIONARY_NAME = 4;
   ADS_TABLE_OPEN_NAME     = 5;

   { indication of bitmap filter optimization }
   ADS_OPTIMIZED_FULL      = 1;
   ADS_OPTIMIZED_PART      = 2;
   ADS_OPTIMIZED_NONE      = 3;

   { Advantage Optimized Filter (AOF) options }
   ADS_DYNAMIC_AOF         = $00000000;  { default }
   ADS_RESOLVE_IMMEDIATE   = $00000001;
   ADS_RESOLVE_DYNAMIC     = $00000002;
   ADS_KEYSET_AOF          = $00000004;
   ADS_FIXED_AOF           = $00000008;


   { Advantage Optimized Filter (AOF) customization options }
   ADS_AOF_ADD_RECORD      = 1;
   ADS_AOF_REMOVE_RECORD   = 2;
   ADS_AOF_TOGGLE_RECORD   = 3;

   { Stored procedure or trigger type }
   ADS_STORED_PROC         = $00000001;
   ADS_COMSTORED_PROC      = $00000002; {* means we know for sure this is a com
                                         * aep. Before 7.1 we couldn't distinguish. *}
   ADS_SCRIPT_PROC         = $00000004; {* Stored procedure written in SQL script *}


   { some maximum values used by the client }
   { NOTE:  constants meant for string length exclude space for null terminator }
   ADS_MAX_DATEMASK        = 12;
   ADS_MAX_ERROR_LEN       = 600;
   ADS_MAX_INDEX_EXPR_LEN  = 510; { this is only accurate for index expressions }
   ADS_MAX_KEY_LENGTH      = 4082;{ maximum key value length }
   ADS_MAX_FIELD_NAME      = 128;
   ADS_MAX_DBF_FIELD_NAME  = 10;  { maximum length of field name in a DBF }
   ADS_MAX_INDEXES         = 15;  { physical index files, NOT index orders }
   ADS_MAX_PATH            = 260;
   ADS_MAX_TABLE_NAME      = 255; { long file name }
   ADS_MAX_TAG_NAME        = 128;
   ADS_MAX_TAGS            = 50;  { maximum for CDX/ADI file }
   ADS_MAX_OBJECT_NAME     = 200; { maximum length of DD object name }
   ADS_MAX_TABLE_AND_PATH  = ADS_MAX_TABLE_NAME + ADS_MAX_PATH;

   { Valid range of page sizes for ADI indexes.  The default page size is 512
     bytes.  Before using another page size, please read the section titled
     "Index Page Size" in the Advantage Client Engine help file (ace.hlp) }
   ADS_MIN_ADI_PAGESIZE    = 512;
   ADS_MAX_ADI_PAGESIZE    = 8192;


   { data types }
   ADS_TYPE_UNKNOWN        = 0;
   ADS_LOGICAL             = 1;     { 1 byte logical value }
   ADS_NUMERIC             = 2;     { DBF character style numeric }
   ADS_DATE                = 3;     { Date field.  With ADS_NTX and ADS_CDX,
                                      this is an 8 byte field of the form
                                      CCYYMMDD.  With ADS_ADT, it is a
                                      4 byte Julian date. }
   ADS_STRING              = 4;     { Character data }
   ADS_MEMO                = 5;     { Variable length character data }

   { the following are extended data types }
   ADS_BINARY              = 6;     { BLOB - any data }
   ADS_IMAGE               = 7;     { BLOB - bitmap }
   ADS_VARCHAR             = 8;     { variable length character field }
   ADS_COMPACTDATE         = 9;     { DBF date represented with 3 bytes }
   ADS_DOUBLE              = 10;    { IEEE 8 byte floating point }
   ADS_INTEGER             = 11;    { IEEE 4 byte signed long integer }

   { The following are supported only with ADT files }
   ADS_SHORTINT            = 12;    { IEEE 2 byte signed short integer }
   ADS_TIME                = 13;    { 4 byte long integer representing
                                      milliseconds since midnight }
   ADS_TIMESTAMP           = 14;    { 8 bytes.  High order 4 bytes are a long
                                      integer representing Julian date.
                                      Low order 4 bytes are a long integer
                                      representing milliseconds since
                                      midnight }
   ADS_AUTOINC             = 15;    { 4 byte auto-increment value }
   ADS_RAW                 = 16;    { Untranslated data }
   ADS_CURDOUBLE           = 17;    { IEEE 8 byte floating point currency }
   ADS_MONEY               = 18;    { 8 byte int, 4 implied decimals }
   ADS_LONGLONG            = 19;    { 8 byte integer }
   ADS_CISTRING            = 20;    { case insensitive string }
   ADS_ROWVERSION          = 21;    { 4 byte auto-increment version number }
   ADS_MODTIME             = 22;    { 8 byte timestamp automatically updated
                                      when a record is updated }
   {* IMPORTANT NOTES: Any time a new field type is added here:
    * 1) The corresponding array in adsdata.pas must be updated to reflect
    *    this change.
    * 2) The below ADS_MAX_FIELD_TYPE constant value must be one larger than
    *    largest valid field type
    *}
   {ADS 9 and above !!!!}
   ADS_VARCHAR_FOX         = 23;    { Visual FoxPro VarChar field }

   ADS_MAX_FIELD_TYPE      = 24;


   { supported User Defined Function types to be used with AdsRegisterUDF }
   ADS_INDEX_UDF           = 1;

   { Constant for AdsMgGetConfigInfo }
   ADS_MAX_CFG_PATH               = 256;

   { Constants for AdsMgGetServerType }
   { Note ADS_MGMT_NETWARE_SERVER remains for backwards compatibility only }
   ADS_MGMT_NETWARE_SERVER           = 1;
   ADS_MGMT_NETWARE4_OR_OLDER_SERVER = 1;
   ADS_MGMT_NT_SERVER                = 2;
   ADS_MGMT_LOCAL_SERVER             = 3;
   ADS_MGMT_WIN9X_SERVER             = 4;
   ADS_MGMT_NETWARE5_OR_NEWER_SERVER = 5;
   ADS_MGMT_LINUX_SERVER             = 6;
   ADS_MGMT_NT_SERVER_64_BIT         = 7;
   ADS_MGMT_LINUX_SERVER_64_BIT      = 8;

   { Constants for AdsMgGetLockOwner }
   ADS_MGMT_NO_LOCK               = 1;
   ADS_MGMT_RECORD_LOCK           = 2;
   ADS_MGMT_FILE_LOCK             = 3;

   { Constants for MgGetInstallInfo }
   ADS_REG_OWNER_LEN              = 36;
   ADS_REVISION_LEN               = 16;
   ADS_INST_DATE_LEN              = 16;
   ADS_OEM_CHAR_NAME_LEN          = 16;
   ADS_ANSI_CHAR_NAME_LEN         = 16;
   ADS_SERIAL_NUM_LEN             = 16;

   { Constants for MgGetOpenTables }
   ADS_MGMT_MAX_PATH              = 260;
   ADS_MGMT_PROPRIETARY_LOCKING   = 1;
   ADS_MGMT_CDX_LOCKING           = 2;
   ADS_MGMT_NTX_LOCKING           = 3;
   ADS_MGMT_ADT_LOCKING           = 4;
   ADS_MGMT_COMIX_LOCKING         = 5;

   ADS_MAX_USER_NAME              = 50;
   ADS_MAX_ADDRESS_SIZE           = 30;

   { The following Management API values can be freely changed by you to fit
     your application's needs. }
   ADS_LOCK_ARRAY_SIZE            = 400;
   ADS_THREAD_ARRAY_SIZE          = 50;
   ADS_TABLE_ARRAY_SIZE           = 200;
   ADS_INDEX_ARRAY_SIZE           = 200;
   ADS_USER_ARRAY_SIZE            = 200;


   { Data dictionary properties related constants }
   ADS_DD_PROPERTY_NOT_AVAIL    = $FFFF;
   ADS_DD_MAX_PROPERTY_LEN      = $FFFE;
   ADS_DD_MAX_OBJECT_NAME_LEN   = 200;
   {*
    * Maximum length of data returned about a data dictionary link.
    * Alias name for the link + ; + User Name for the link + ; + PATH to the data dictionary + ';'
    *}
   ADS_DD_MAX_LINK_INFO_SIZE    = 2 * ADS_DD_MAX_OBJECT_NAME_LEN + ADS_MAX_PATH + 3;

   ADS_DD_UNKNOWN_OBJECT            = 0;
   ADS_DD_TABLE_OBJECT              = 1;
   ADS_DD_RELATION_OBJECT           = 2;
   ADS_DD_INDEX_FILE_OBJECT         = 3;
   ADS_DD_FIELD_OBJECT              = 4;
   ADS_DD_COLUMN_OBJECT             = 4;
   ADS_DD_INDEX_OBJECT              = 5;
   ADS_DD_VIEW_OBJECT               = 6;
   ADS_DD_VIEW_OR_TABLE_OBJECT      = 7;  { Used in AdsFindFirst/NextTable }
   ADS_DD_USER_OBJECT               = 8;
   ADS_DD_USER_GROUP_OBJECT         = 9;
   ADS_DD_PROCEDURE_OBJECT          = 10;
   ADS_DD_DATABASE_OBJECT           = 11;
   ADS_DD_LINK_OBJECT               = 12;
   ADS_DD_TABLE_VIEW_OR_LINK_OBJECT = 13;
   ADS_DD_TRIGGER_OBJECT            = 14;
   ADS_DD_PUBLICATION_OBJECT        = 15;
   ADS_DD_ARTICLE_OBJECT            = 16;
   ADS_DD_SUBSCRIPTION_OBJECT       = 17;
   ADS_DD_FUNCTION_OBJECT           = 18;
   ADS_DD_PACKAGE_OBJECT            = 19;
   ADS_DD_QUALIFIED_TRIGGER_OBJ     = 20; { Used in AdsFindFirst/NextTable }


   { Common properties numbers < 100 }
   ADS_DD_COMMENT               = 1;
   ADS_DD_VERSION               = 2;
   ADS_DD_USER_DEFINED_PROP     = 3;
   ADS_DD_OBJECT_NAME           = 4;
   ADS_DD_TRIGGERS_DISABLED     = 5;
   ADS_DD_OBJECT_ID             = 6;
   ADS_DD_OPTIONS               = 7;

   { Database properties between 100 and 199 }
   ADS_DD_DEFAULT_TABLE_PATH           = 100;
   ADS_DD_ADMIN_PASSWORD               = 101;
   ADS_DD_TEMP_TABLE_PATH              = 102;
   ADS_DD_LOG_IN_REQUIRED              = 103;
   ADS_DD_VERIFY_ACCESS_RIGHTS         = 104;
   ADS_DD_ENCRYPT_TABLE_PASSWORD       = 105;
   ADS_DD_ENCRYPT_NEW_TABLE            = 106;
   ADS_DD_ENABLE_INTERNET              = 107;
   ADS_DD_INTERNET_SECURITY_LEVEL      = 108;
   ADS_DD_MAX_FAILED_ATTEMPTS          = 109;
   ADS_DD_ALLOW_ADSSYS_NET_ACCESS      = 110;
   ADS_DD_VERSION_MAJOR                = 111;  {* defines for customer dd versions *}
   ADS_DD_VERSION_MINOR                = 112;
   ADS_DD_LOGINS_DISABLED              = 113;
   ADS_DD_LOGINS_DISABLED_ERRSTR       = 114;
   ADS_DD_FTS_DELIMITERS               = 115;
   ADS_DD_FTS_NOISE                    = 116;
   ADS_DD_FTS_DROP_CHARS               = 117;
   ADS_DD_FTS_CONDITIONAL_CHARS        = 118;
   ADS_DD_ENCRYPTED                    = 119;
   ADS_DD_ENCRYPT_INDEXES              = 120;
   ADS_DD_QUERY_LOG_TABLE              = 121;
   ADS_DD_ENCRYPT_COMMUNICATION        = 122;
   ADS_DD_DEFAULT_TABLE_RELATIVE_PATH  = 123;
   ADS_DD_TEMP_TABLE_RELATIVE_PATH     = 124;
   ADS_DD_DISABLE_DLL_CACHING          = 125;

   { Table properties between 200 and 299 }
   ADS_DD_TABLE_VALIDATION_EXPR   = 200;
   ADS_DD_TABLE_VALIDATION_MSG    = 201;
   ADS_DD_TABLE_PRIMARY_KEY       = 202;
   ADS_DD_TABLE_AUTO_CREATE       = 203;
   ADS_DD_TABLE_TYPE              = 204;
   ADS_DD_TABLE_PATH              = 205;
   ADS_DD_TABLE_FIELD_COUNT       = 206;
   ADS_DD_TABLE_RI_GRAPH          = 207;
   ADS_DD_TABLE_OBJ_ID            = 208;
   ADS_DD_TABLE_RI_XY             = 209;
   ADS_DD_TABLE_IS_RI_PARENT      = 210;
   ADS_DD_TABLE_RELATIVE_PATH     = 211;
   ADS_DD_TABLE_CHAR_TYPE         = 212;
   ADS_DD_TABLE_DEFAULT_INDEX     = 213;
   ADS_DD_TABLE_ENCRYPTION        = 214;
   ADS_DD_TABLE_MEMO_BLOCK_SIZE   = 215;
   ADS_DD_TABLE_PERMISSION_LEVEL  = 216;
   ADS_DD_TABLE_TRIGGER_TYPES     = 217;
   ADS_DD_TABLE_TRIGGER_OPTIONS   = 218;

   { Field properties between 300 - 399 }
   ADS_DD_FIELD_DEFAULT_VALUE   = 300;
   ADS_DD_FIELD_CAN_NULL        = 301;
   ADS_DD_FIELD_MIN_VALUE       = 302;
   ADS_DD_FIELD_MAX_VALUE       = 303;
   ADS_DD_FIELD_VALIDATION_MSG  = 304;
   ADS_DD_FIELD_DEFINITION      = 305;
   ADS_DD_FIELD_TYPE            = 306;
   ADS_DD_FIELD_LENGTH          = 307;
   ADS_DD_FIELD_DECIMAL         = 308;
   ADS_DD_FIELD_NUM             = 309;

   { Index tag properties between 400 - 499 }
   ADS_DD_INDEX_FILE_NAME             = 400;
   ADS_DD_INDEX_EXPRESSION            = 401;
   ADS_DD_INDEX_CONDITION             = 402;
   ADS_DD_INDEX_OPTIONS               = 403;
   ADS_DD_INDEX_KEY_LENGTH            = 404;
   ADS_DD_INDEX_KEY_TYPE              = 405;
   ADS_DD_INDEX_FTS_MIN_LENGTH        = 406;
   ADS_DD_INDEX_FTS_DELIMITERS        = 407;
   ADS_DD_INDEX_FTS_NOISE             = 408;
   ADS_DD_INDEX_FTS_DROP_CHARS        = 409;
   ADS_DD_INDEX_FTS_CONDITIONAL_CHARS = 410;

   { RI properties between 500-599 }
   ADS_DD_RI_PARENT_GRAPH       = 500;
   ADS_DD_RI_PRIMARY_TABLE      = 501;
   ADS_DD_RI_PRIMARY_INDEX      = 502;
   ADS_DD_RI_FOREIGN_TABLE      = 503;
   ADS_DD_RI_FOREIGN_INDEX      = 504;
   ADS_DD_RI_UPDATERULE         = 505;
   ADS_DD_RI_DELETERULE         = 506;
   ADS_DD_RI_NO_PKEY_ERROR      = 507;
   ADS_DD_RI_CASCADE_ERROR      = 508;

   { User properties between 600-699 }
   ADS_DD_USER_GROUP_NAME       = 600;

   { View properties between 700-749 }
   ADS_DD_VIEW_STMT             = 700;
   ADS_DD_VIEW_STMT_LEN         = 701;
   ADS_DD_VIEW_TRIGGER_TYPES    = 702;
   ADS_DD_VIEW_TRIGGER_OPTIONS  = 703;


   { Stored procedure properties 800-899 }
   ADS_DD_PROC_INPUT            = 800;
   ADS_DD_PROC_OUTPUT           = 801;
   ADS_DD_PROC_DLL_NAME         = 802;
   ADS_DD_PROC_DLL_FUNCTION_NAME= 803;
   ADS_DD_PROC_INVOKE_OPTION    = 804;
   ADS_DD_PROC_SCRIPT           = 805;

   { Index file properties 900-999 }
   ADS_DD_INDEX_FILE_PATH          = 900;
   ADS_DD_INDEX_FILE_PAGESIZE      = 901;
   ADS_DD_INDEX_FILE_RELATIVE_PATH = 902;
   ADS_DD_INDEX_FILE_TYPE          = 903;

   { Object rights properties 1001 - 1099 .  They can be used
     with either user or user group objects. }
   ADS_DD_TABLES_RIGHTS         = 1001;
   ADS_DD_VIEWS_RIGHTS          = 1002;
   ADS_DD_PROCS_RIGHTS          = 1003;
   ADS_DD_OBJECTS_RIGHTS        = 1004;
   ADS_DD_FREE_TABLES_RIGHTS    = 1005;


   { User Properties 1101 - 1199 }
   ADS_DD_USER_PASSWORD         = 1101;
   ADS_DD_USER_GROUP_MEMBERSHIP = 1102;
   ADS_DD_USER_BAD_LOGINS       = 1103;


   {* Link properties 1301 - 1399 *}
   ADS_DD_LINK_PATH             = 1300;
   ADS_DD_LINK_OPTIONS          = 1301;
   ADS_DD_LINK_USERNAME         = 1302;
   ADS_DD_LINK_RELATIVE_PATH    = 1303;

   {* Trigger properties 1400 - 1499 *}
   ADS_DD_TRIG_TABLEID          =  1400;
   ADS_DD_TRIG_EVENT_TYPE       =  1401;
   ADS_DD_TRIG_TRIGGER_TYPE     =  1402;
   ADS_DD_TRIG_CONTAINER_TYPE   =  1403;
   ADS_DD_TRIG_CONTAINER        =  1404;
   ADS_DD_TRIG_FUNCTION_NAME    =  1405;
   ADS_DD_TRIG_PRIORITY         =  1406;
   ADS_DD_TRIG_OPTIONS          =  1407;
   ADS_DD_TRIG_TABLENAME        =  1408;

   {* Publication properties 1500 - 1599 *}
   ADS_DD_PUBLICATION_OPTIONS   =  1500;

   {* Publication article properties 1600 - 1699 *}
   ADS_DD_ARTICLE_FILTER               =  1600;
   ADS_DD_ARTICLE_ID_COLUMNS           =  1601;
   ADS_DD_ARTICLE_ID_COLUMN_NUMBERS    =  1602;
   ADS_DD_ARTICLE_FILTER_SHORT         =  1603;
   ADS_DD_ARTICLE_INCLUDE_COLUMNS      =  1604;
   ADS_DD_ARTICLE_EXCLUDE_COLUMNS      =  1605;
   ADS_DD_ARTICLE_INC_COLUMN_NUMBERS   =  1606;

   {* Subscription article properties 1700 - 1799 *}
   ADS_DD_SUBSCR_PUBLICATION_NAME    = 1700;
   ADS_DD_SUBSCR_TARGET              = 1701;
   ADS_DD_SUBSCR_USERNAME            = 1702;
   ADS_DD_SUBSCR_PASSWORD            = 1703;
   ADS_DD_SUBSCR_FORWARD             = 1704;
   ADS_DD_SUBSCR_ENABLED             = 1705;
   ADS_DD_SUBSCR_QUEUE_NAME          = 1706;
   ADS_DD_SUBSCR_OPTIONS             = 1707;

   ADS_DD_LEVEL_0       = 0;
   ADS_DD_LEVEL_1       = 1;
   ADS_DD_LEVEL_2       = 2;

   { Referential Integrity (RI) update and delete rules }
   ADS_DD_RI_CASCADE            = 1;
   ADS_DD_RI_RESTRICT           = 2;
   ADS_DD_RI_SETNULL            = 3;
   ADS_DD_RI_SETDEFAULT         = 4;

   { Default Field Value Options }
   ADS_DD_DFV_UNKNOWN           = 1;
   ADS_DD_DFV_NONE              = 2;
   ADS_DD_DFV_VALUES_STORED     = 3;

   {* Supported permissions in the data dictionary *}
   ADS_PERMISSION_NONE           = $00000000;
   ADS_PERMISSION_READ           = $00000001;
   ADS_PERMISSION_UPDATE         = $00000002;
   ADS_PERMISSION_EXECUTE        = $00000004;
   ADS_PERMISSION_INHERIT        = $00000008;
   ADS_PERMISSION_INSERT         = $00000010;
   ADS_PERMISSION_DELETE         = $00000020;
   ADS_PERMISSION_LINK_ACCESS    = $00000040;
   ADS_PERMISSION_CREATE         = $00000080;
   ADS_PERMISSION_ALTER          = $00000100;
   ADS_PERMISSION_DROP           = $00000200;
   ADS_PERMISSION_WITH_GRANT     = $80000000;
   ADS_PERMISSION_ALL_WITH_GRANT = $8FFFFFFF;
   ADS_PERMISSION_ALL            = $FFFFFFFF;

   {*
    * special code that can be used as the input to specify
    * which special permission to retrieve.
    *}
   ADS_GET_PERMISSIONS_WITH_GRANT         = $8000FFFF;
   ADS_GET_PERMISSIONS_CREATE             = $FFFF0080;
   ADS_GET_PERMISSIONS_CREATE_WITH_GRANT  = $8FFFFF8F;

   {* Link DD options *}
   ADS_LINK_GLOBAL             = $00000001;
   ADS_LINK_AUTH_ACTIVE_USER   = $00000002;
   ADS_LINK_PATH_IS_STATIC     = $00000004;

   {* Trigger event types *}
   ADS_TRIGEVENT_INSERT         = 1;
   ADS_TRIGEVENT_UPDATE         = 2;
   ADS_TRIGEVENT_DELETE         = 3;

   {* Trigger types *}
   ADS_TRIGTYPE_BEFORE         = $00000001;
   ADS_TRIGTYPE_INSTEADOF      = $00000002;
   ADS_TRIGTYPE_AFTER          = $00000004;
   ADS_TRIGTYPE_CONFLICTON     = $00000008;

   {* Trigger container types *}
   ADS_TRIG_WIN32DLL           = 1;
   ADS_TRIG_COM                = 2;
   ADS_TRIG_SCRIPT             = 3;

   {* Trigger options *}
   ADS_TRIGOPTIONS_NO_VALUES            = $00000000;
   ADS_TRIGOPTIONS_WANT_VALUES          = $00000001;
   ADS_TRIGOPTIONS_WANT_MEMOS_AND_BLOBS = $00000002;
   ADS_TRIGOPTIONS_DEFAULT              = $00000003;  {* default is to include vals and memos *}
   ADS_TRIGOPTIONS_NO_TRANSACTION       = $00000004;

   {*
    * Table permission verification levels.
    * Level 1 is all columns searchable, even those without permission.
    * Level 2 is the default. Permission to the column is required to search or filter on the column.
    * Level 3 is the most restrictive. Only static SQL cursors are allowed.
    *}
   ADS_DD_TABLE_PERMISSION_LEVEL_1 = 1;
   ADS_DD_TABLE_PERMISSION_LEVEL_2 = 2;
   ADS_DD_TABLE_PERMISSION_LEVEL_3 = 3;

   {* AdsDDRenameObject options *}
   ADS_KEEP_TABLE_FILE_NAME       = $00000001;

   {* AdsDDCreateArticle options *}
   ADS_IDENTIFY_BY_PRIMARY        = $00000001;
   ADS_IDENTIFY_BY_ALL            = $00000002;

   {* AdsDDCreateSubscription options *}
   ADS_SUBSCR_QUEUE_IS_STATIC     = $00000001;
   ADS_SUBSCR_AIS_TARGET          = $00000002;
   ADS_SUBSCR_IGNORE_FAILED_REP   = $00000004;
   ADS_SUBSCR_LOG_FAILED_REP_DATA = $00000008;


   {*
    * Table names for system tables.
    *}
   ADS_SYSTEM_DICTIONARY_TABLE_NAME         = 'dictionary';
   ADS_SYSTEM_TABLES_TABLE_NAME             = 'tables';
   ADS_SYSTEM_COLUMNS_TABLE_NAME            = 'columns';
   ADS_SYSTEM_USERS_TABLE_NAME              = 'users';
   ADS_SYSTEM_USER_GROUPS_TABLE_NAME        = 'usergroups';
   ADS_SYSTEM_USER_GROUP_MEMBERS_TABLE_NAME = 'usergroupmembers';
   ADS_SYSTEM_INDEX_FILES_TABLE_NAME        = 'indexfiles';
   ADS_SYSTEM_INDEXES_TABLE_NAME            = 'indexes';
   ADS_SYSTEM_PERMISSIONS_TABLE_NAME        = 'permissions';
   ADS_SYSTEM_RELATIONS_TABLE_NAME          = 'relations';
   ADS_SYSTEM_VIEWS_TABLE_NAME              = 'views';
   ADS_SYSTEM_STORED_PROCEDURES_TABLE_NAME  = 'storedprocedures';
   ADS_SYSTEM_LINKS_TABLE_NAME              = 'links';
   ADS_SYSTEM_OBJECTS_TABLE_NAME            = 'objects';
   ADS_SYSTEM_TRIGGERS_TABLE_NAME            = 'triggers';

   {* Number of system tables *}
   ADS_NUMBER_SYSTEM_TABLES = 15;


type
   PAceChar = PAnsiChar;
   AceChar = AnsiChar;

   {$IFDEF ADSDELPHI2008_OR_NEWER}
   PAceBinary = PByte;
   {$ELSE}
   PAceBinary = PChar;
   {$ENDIF}

   { This data type defines what type of function to pass to
     AdsRegisterCallbackFunction(). }
   TCallbackFunction = function( usPercent: Word;
                                 ulCallbackID: Longint ): Longint; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   { This data type defines what type of function to pass to
     AdsRegisterProgressCallback(). }
   TProgressCallback = function( usPercent: Word ): Longint; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   { This data type defines what type of function to pass to
     AdsRegisterSQLAbortFunc(). }
   TSQLAbortFunc = function: Longint; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   { This data type defines the type of function that AdsRegisterUDF() takes
     as a parameter.  This should be used to cast the real function, which has
     different parameters.  See the documentation for AdsRegisterUDF for more
     information }
   TUDFFunc = function: Longint; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   { This type allows a numeric field value to be passed into functions
     that expect field names.  If the user prefers to use column number,
     then calls like this can be made:
     ulRet = AdsGetDouble( hTable, ADSFIELD( 1 ), &dVal );
     Where the first column is a numeric value to retrieve. }
   ADSFIELD = PAceChar;

   { data type definitions }
   ADSHANDLE      = Longint;

   {*
    * With data dicitonaries it is possible for a table to have more than
    * fifty index tags.  If you need more than fifty tags you will
    * need to declare a new array with a larger size.
    *}
   ADSIndexArray  = array[0..ADS_MAX_TAGS - 1] of ADSHANDLE;
   PADSIndexArray = ^ADSIndexArray;

   PADSHANDLE     = ^ADSHANDLE;
   PDOUBLE        = ^Double;
   PWord          = ^Word;
   SIGNED16       = SmallInt;
   PSIGNED16      = ^SmallInt;
   UNSIGNED16     = Word;
   PUNSIGNED16    = ^Word;
   SIGNED32       = Longint;
   PSIGNED32      = ^SIGNED32;
{$IFDEF ADSDELPHI5_OR_NEWER }
   SIGNED64       = Int64;
   PSIGNED64      = ^SIGNED64;
{$ENDIF}
{$IFDEF ADSDELPHI4_OR_NEWER }
   UNSIGNED32     = LongWord;
{$ELSE}
   UNSIGNED32     = Longint;
{$ENDIF}
   PUNSIGNED32    = ^UNSIGNED32;
   SIGNED8        = BYTE;
   UNSIGNED8      = BYTE;
   pPChar         = ^PAceChar;


{ structure definitions for the Management API }
ADS_MGMT_COMM_STATS = record
   dPercentCheckSums:   double;      { % of packets with checksum failures }
   ulTotalPackets:      UNSIGNED32;  { Total packets received }
   ulRcvPktOutOfSeq:    UNSIGNED32;  { Receive packets out of sequence }
   ulNotLoggedIn:       UNSIGNED32;  { Packet owner not logged in }
   ulRcvReqOutOfSeq:    UNSIGNED32;  { Receive requests out of sequence }
   ulCheckSumFailures:  UNSIGNED32;  { Checksum failures }
   ulDisconnectedUsers: UNSIGNED32;  { Server initiated disconnects }
   ulPartialConnects:   UNSIGNED32;  { Removed partial connections }
   ulInvalidPackets:    UNSIGNED32;  { Rcvd invalid packets (NT only) }
   ulRecvFromErrors:    UNSIGNED32;  { RecvFrom failed (NT only) }
   ulSendToErrors:      UNSIGNED32;  { SendTo failed (NT only) }
end;

   pADS_MGMT_COMM_STATS = ^ADS_MGMT_COMM_STATS;


ADS_MGMT_CONFIG_PARAMS = record
   ulNumConnections:        UNSIGNED32;  { number connections }
   ulNumWorkAreas:          UNSIGNED32;  { number work areas }
   ulNumTables:             UNSIGNED32;  { number tables }
   ulNumIndexes:            UNSIGNED32;  { number indexes }
   ulNumLocks:              UNSIGNED32;  { number locks }
   ulUserBufferSize:        UNSIGNED32;  { user buffer }
   ulStatDumpInterval:      UNSIGNED32;  { statistics dump interval }
   ulErrorLogMax:           UNSIGNED32;  { max size of error log }
   ulNumTPSHeaderElems:     UNSIGNED32;  { number TPS header elems }
   ulNumTPSVisibilityElems: UNSIGNED32;  { number TPS vis elems }
   ulNumTPSMemoTransElems:  UNSIGNED32;  { number TPS memo elems }
   usNumRcvECBs:            UNSIGNED16;  { number rcv ECBs (NLM only) }
   usNumSendECBs:           UNSIGNED16;  { number send ECBs (NLM only) }
   usNumBurstPackets:       UNSIGNED16;  { number packets per burst }
   usNumWorkerThreads:      UNSIGNED16;  { number worker threads }
   ulSortBuffSize:          UNSIGNED32;  { index sort buffer size }
   aucErrorLog:             array[0..ADS_MAX_CFG_PATH - 1] of AceChar; { error log path }
   aucSemaphore:            array[0..ADS_MAX_CFG_PATH - 1] of AceChar; { sema4 file path }
   aucTransaction:          array[0..ADS_MAX_CFG_PATH - 1] of AceChar; { TPS log file path }

   ucReserved3:             UNSIGNED8 ;  { reserved }
   ucReserved4:             UNSIGNED8 ;  { reserved }
   usSendIPPort:            UNSIGNED16;  { NT Service IP send port # }
   usReceiveIPPort:         UNSIGNED16;  { NT Service IP receive port # }
   ucUseIPProtocol:         UNSIGNED8;   { Win9x only. Which protocol to use }
   ucFlushEveryUpdate:      UNSIGNED8;   { Win9x specific }

   ulGhostTimeout:          UNSIGNED32;  { Diconnection time for partial connections }
   ulFlushFrequency:        UNSIGNED32;  { local server }

   ulKeepAliveTimeOut:      UNSIGNED32;  { When not using semaophore files. In milli-secs}
   ucDisplayNWLoginNames:   UNSIGNED8;   { Display connections using user names. }
   ucUseSemaphoreFiles:     UNSIGNED8;   { Whether or not to use semaphore files }
   ucUseDynamicAOFs:        UNSIGNED8;
   ucUseInternet:           UNSIGNED8;   { 0 if an Internet port is not specified. }

   usInternetPort:          UNSIGNED16;  { Internet Port }
   usMaxConnFailures:       UNSIGNED16;  { Maximum Internet connection failures allowed. }
   ulInternetKeepAlive:     UNSIGNED32;  { In Milli-secs }

   usCompressionLevel:      UNSIGNED16;  { ADS_COMPRESS_NEVER, ADS_COMPRESS_INTERNET, or ADS_COMPRESS_ALWAYS }
   usReserved5:             UNSIGNED16;  { reserved }
   ulReserved6:             UNSIGNED32;  { reserved }
end;

   pADS_MGMT_CONFIG_PARAMS = ^ADS_MGMT_CONFIG_PARAMS;

ADS_MGMT_CONFIG_MEMORY = record
   ulTotalConfigMem:      UNSIGNED32;    { total mem used by cfg params }
   ulConnectionMem:       UNSIGNED32;    { memory taken by connections }
   ulWorkAreaMem:         UNSIGNED32;    { memory taken by work areas }
   ulTableMem:            UNSIGNED32;    { memory taken by tables }
   ulIndexMem:            UNSIGNED32;    { memory taken by indexes }
   ulLockMem:             UNSIGNED32;    { memory taken by locks }
   ulUserBufferMem:       UNSIGNED32;    { memory taken by user buffer }
   ulTPSHeaderElemMem:    UNSIGNED32;    { memory taken by TPS hdr elems }
   ulTPSVisibilityElemMem:UNSIGNED32;    { memory taken by TPS vis elems }
   ulTPSMemoTransElemMem: UNSIGNED32;    { mem taken by TPS memo elems }
   ulRcvEcbMem:           UNSIGNED32;    { mem taken by rcv ECBs (NLM) }
   ulSendEcbMem:          UNSIGNED32;    { mem taken by send ECBs (NLM) }
   ulWorkerThreadMem:     UNSIGNED32;    { mem taken by worker threads }
end;

   pADS_MGMT_CONFIG_MEMORY = ^ADS_MGMT_CONFIG_MEMORY;


ADS_MGMT_INSTALL_INFO = record
   ulUserOption :       UNSIGNED32;
   aucRegisteredOwner:  array[0..ADS_REG_OWNER_LEN - 1] of AceChar;
   aucVersionStr:       array[0..ADS_REVISION_LEN - 1] of AceChar;
   aucInstallDate:      array[0..ADS_INST_DATE_LEN - 1] of AceChar;
   aucOemCharName:      array[0..ADS_OEM_CHAR_NAME_LEN - 1] of AceChar;
   aucAnsiCharName:     array[0..ADS_ANSI_CHAR_NAME_LEN - 1] of AceChar;
   aucEvalExpireDate:   array[0..ADS_INST_DATE_LEN - 1] of AceChar;
   aucSerialNumber:     array[0..ADS_SERIAL_NUM_LEN - 1] of AceChar;
end;

   pADS_MGMT_INSTALL_INFO = ^ADS_MGMT_INSTALL_INFO;

ADS_MGMT_USAGE_INFO = record
   ulInUse:     UNSIGNED32;  { Number of items in use }
   ulMaxUsed:   UNSIGNED32;  { Max number of items ever used }
   ulRejected:  UNSIGNED32;  { Number of items rejected }
end;

   pADS_MGMT_USAGE_INFO = ^ADS_MGMT_USAGE_INFO;

ADS_MGMT_UPTIME_INFO = record
   usDays:      UNSIGNED16;  { Number of days server has been up }
   usHours:     UNSIGNED16;  { Number of hours server has been up }
   usMinutes:   UNSIGNED16;  { Number on minutes server has been up }
   usSeconds:   UNSIGNED16;  { Number of seconds server has been up }
end;

   pADS_MGMT_UPTIME_INFO = ^ADS_MGMT_UPTIME_INFO;

ADS_MGMT_ACTIVITY_INFO = record
   ulOperations:      UNSIGNED32;           { Number operations since started }
   ulLoggedErrors:    UNSIGNED32;           { Number logged errors }
   stUpTime:          ADS_MGMT_UPTIME_INFO; { Length of time ADS has been up }
   stUsers:           ADS_MGMT_USAGE_INFO;  { Users in use, max, rejected }
   stConnections:     ADS_MGMT_USAGE_INFO;  { Connections in use, max, rejected }
   stWorkAreas:       ADS_MGMT_USAGE_INFO;  { Work areas in use, max, rejected }
   stTables:          ADS_MGMT_USAGE_INFO;  { Tables in use, max, rejected }
   stIndexes:         ADS_MGMT_USAGE_INFO;  { Indexes in use, max, rejected }
   stLocks:           ADS_MGMT_USAGE_INFO;  { Locks in use, max, rejected }
   stTpsHeaderElems:  ADS_MGMT_USAGE_INFO;  { TPS header elems in use, max }
   stTpsVisElems:     ADS_MGMT_USAGE_INFO;  { TPS visibility elems in use, max }
   stTpsMemoElems:    ADS_MGMT_USAGE_INFO;  { TPS memo elems in use, max }
   stWorkerThreads:   ADS_MGMT_USAGE_INFO;  { Worker Threads in use, max }
end;

   pADS_MGMT_ACTIVITY_INFO = ^ADS_MGMT_ACTIVITY_INFO;

ADS_MGMT_USER_INFO = record
   aucUserName:  array[0..ADS_MAX_USER_NAME - 1] of AceChar;  { Name of connected user }
   usConnNumber: UNSIGNED16;                { NetWare conn num (NLM only) }
   aucDictionaryName: array[0..ADS_MAX_USER_NAME - 1] of AceChar;
   aucAddress: array[0..ADS_MAX_ADDRESS_SIZE - 1] of AceChar;
   aucOSUserLoginName: array[0..ADS_MAX_USER_NAME - 1] of AceChar; { OS User Login Name }
   aucTSAddress: array[0..ADS_MAX_ADDRESS_SIZE - 1] of AceChar; { Terminal Server Client IP address }
end;

   pADS_MGMT_USER_INFO = ^ADS_MGMT_USER_INFO;
   ADSMgUserArray = array[0..ADS_USER_ARRAY_SIZE - 1] of ADS_MGMT_USER_INFO;
   PADSMgUserArray = ^ADSMgUserArray;


ADS_MGMT_TABLE_INFO = record
   aucTableName: array[0..ADS_MGMT_MAX_PATH - 1] of AceChar;  { Fully qualified table name }
   usLockType:   UNSIGNED16;  { Advantage locking mode }
end;

   pADS_MGMT_TABLE_INFO = ^ADS_MGMT_TABLE_INFO;
   ADSMgTableArray = array[0..ADS_TABLE_ARRAY_SIZE - 1] of ADS_MGMT_TABLE_INFO;
   PADSMgTableArray = ^ADSMgTableArray;

ADS_MGMT_INDEX_INFO = record
   aucIndexName: array[0..ADS_MGMT_MAX_PATH - 1] of AceChar;   { Fully qualified index name }
end;

   pADS_MGMT_INDEX_INFO = ^ADS_MGMT_INDEX_INFO;
   ADSMgIndexArray = array[0..ADS_INDEX_ARRAY_SIZE - 1] of ADS_MGMT_INDEX_INFO;
   PADSMgIndexArray = ^ADSMgIndexArray;

ADS_MGMT_RECORD_INFO = record
   ulRecordNumber:  UNSIGNED32;  { Record number that is locked }
end;

   pADS_MGMT_RECORD_INFO = ^ADS_MGMT_RECORD_INFO;
   ADSMgLocksArray = array[0..ADS_LOCK_ARRAY_SIZE - 1] of ADS_MGMT_RECORD_INFO;
   PADSMgLocksArray = ^ADSMgLocksArray;

ADS_MGMT_THREAD_ACTIVITY = record
   ulThreadNumber: UNSIGNED32;                { Thread Number               }
   usOpCode:       UNSIGNED16;                { Operation in progress       }
   aucUserName:    array[0..ADS_MAX_USER_NAME - 1] of AceChar;  { Name of user }
   usConnNumber:   UNSIGNED16;                { NetWare conn num (NLM only) }
   usReserved1:    UNSIGNED16;                { Reserved                    }
   aucOSUserLoginName: array[0..ADS_MAX_USER_NAME - 1] of AceChar; { OS User Login Name }
end;

   pADS_MGMT_THREAD_ACTIVITY = ^ADS_MGMT_THREAD_ACTIVITY;
   ADSMgThreadsArray = array[0..ADS_THREAD_ARRAY_SIZE - 1] of ADS_MGMT_THREAD_ACTIVITY;
   PADSMgThreadsArray = ^ADSMgThreadsArray;


   { This data type defines the type of function that will be called by the
     Advantage Server when an Advantage Stored Procedure is called.  See the
     Documentation for stored procedures for more information. }
   TStoredProcedure = function
      (
      ulConnectionID : UNSIGNED32; { (I) value used to associate a user/connection }
                                   {     and can be used to track the state        }
      pucUserName    : PAceChar;      { (I) the user name who invoked this procedure  }
      pucPassword    : PAceChar;      { (I) the user's password in encrypted form     }
      pucProcName    : PAceChar;      { (I) the stored procedure name                 }
      ulRecNum       : UNSIGNED32; { (I) reserved for triggers                     }
      pucTable1      : PAceChar;      { (I) table one.  For Stored Proc this table    }
                                   {     contains all input parameters.  For       }
                                   {     triggers, it contains the original field  }
                                   {     values if the trigger is an OnUpdate or   }
                                   {     OnDelete                                  }
      pucTable2      : PAceChar       { (I) table two.  For Stored Proc this table    }
                                   {     is empty and the users function will      }
                                   {     optionally add rows to it as output.      }
                                   {     For triggers, it contains the new field   }
                                   {     values if the trigger is an OnUpdate or   }
                                   {     OnInsert                                  }
      ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   { This data type defines what the startup function that will be called once
     by the Advantage Server when an user connects and prepares to execute a stored
     procedure. }
   TStartupProcedure = function
      (
      ulConnectionID : UNSIGNED32; { (I) value used to associate a user/connection }
                                   {     and can be used to track the state        }
      pucUserName    : PAceChar;      { (I) the user name who invoked this procedure  }
      pucPassword    : PAceChar       { (I) the user's password in encrypted form     }
      ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   { This data type defines what the shutdown function that will be called once
     by the Advantage Server when an user disconnects after having executed stored
     procedures. }
   TShutdownProcedure = function
      (
      ulConnectionID : UNSIGNED32; { (I) value used to associate a user/connection }
                                   {     and can be used to track the state        }
      pucUserName    : PAceChar;      { (I) the user name who invoked this procedure  }
      pucPassword    : PAceChar       { (I) the user's password in encrypted form     }
      ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


{ Data dictionary properties related constants and structure }
ADD_FIELD_DESC = record
   usFieldType:    UNSIGNED16;
   usFieldLength:  UNSIGNED16;
   usFieldDecimal: UNSIGNED16;
end;


{ function declarations }
   function AdsAddCustomKey( hIndex: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsAppendRecord( hTable: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsApplicationExit: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsAtBOF( hTable: ADSHANDLE;
                      pbBof: pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsAtEOF( hTable: ADSHANDLE;
                      pbEof: pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsBeginTransaction( hConnect:ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsBinaryToFile( hTable: ADSHANDLE;
                             pucFieldName: PAceChar;
                             pucFileName: PAceChar ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsBuildRawKey( hIndex: ADSHANDLE;
                            pucKey: PAceChar;
                            pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCacheOpenTables( usOpen: Word ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCacheOpenCursors( usOpen: Word ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCacheRecords( hTable: ADSHANDLE;
                             usNumRecords : WORD ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCancelUpdate( hTable: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCheckExistence( hConnect: ADSHANDLE;
                               pucFileName: PAceChar;
                               pusOnDisk: pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearAllScopes( hTable: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearCallbackFunction: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearDefault: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearFilter( hTable: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearProgressCallback: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearRelation( hTableParent: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearScope( hIndex: ADSHANDLE;
                           usScopeOption: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloneTable( hTable: ADSHANDLE;
                           phClone: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloseAllIndexes( hTable: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloseAllTables: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloseIndex( hIndex: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloseTable( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloseCachedTables( hConnection: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCommitTransaction( hConnect: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsConnect( pucServerName: PAceChar;
                        phConnect:pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsConnect26( pucServerName: PAceChar;
                        usServerOptions: Word;
                        phConnect:pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsContinue( hTable: ADSHANDLE;
                         pbFound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsConvertTable( hObj: ADSHANDLE;
                             usFilterOption : Word;
                             pucFile: PAceChar;
                             usTableType: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCopyTable( hObj: ADSHANDLE;
                          usFilterOption: Word;
                          pucFile: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCopyTableContents( hObjFrom: ADSHANDLE;
                                  hTableTo: ADSHANDLE;
                                  usFilterOption: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCopyTableStructure( hTable: ADSHANDLE;
                                   pucFile: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCreateIndex( hObj: ADSHANDLE;
                            pucFileName: PAceChar;
                            pucTag: PAceChar;
                            pucExpr: PAceChar;
                            pucCondition: PAceChar;
                            pucWhile: PAceChar;
                            ulOptions: UNSIGNED32;
                            phIndex: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCreateIndex61( hObj: ADSHANDLE;
                              pucFileName: PAceChar;
                              pucTag: PAceChar;
                              pucExpr: PAceChar;
                              pucCondition: PAceChar;
                              pucWhile: PAceChar;
                              ulOptions: UNSIGNED32;
                              ulPageSize: UNSIGNED32;
                              phIndex: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCreateFTSIndex( hTable: ADSHANDLE;
                               pucFileName: PAceChar;
                               pucTag: PAceChar;
                               pucField: PAceChar;
                               ulPageSize: UNSIGNED32;
                               ulMinWordLen: UNSIGNED32;
                               ulMaxWordLen: UNSIGNED32;
                               bUseDefaultDelim: Word;
                               pucDelimiters: PAceChar;
                               bUseDefaultNoise: Word;
                               pucNoiseWords: PAceChar;
                               bUseDefaultDrop: Word;
                               pucDropChars: PAceChar;
                               bUseDefaultConditionals: Word;
                               pucConditionalChars: PAceChar;
                               pucReserved1: PAceChar;
                               pucReserved2: PAceChar;
                               ulOptions: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCreateTable( hConnection : ADSHANDLE;
                            pucName: PAceChar;
                            pucAlias: PAceChar;
                            usTableType: Word;
                            usCharType: Word;
                            usLockType: Word;
                            usCheckRights: Word;
                            usMemoSize: Word;
                            pucFields: PAceChar;
                            phTable: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCreateTable71( hConnection : ADSHANDLE;
                              pucName: PAceChar;
                              pucDBObjName: PAceChar;
                              usTableType: Word;
                              usCharType: Word;
                              usLockType: Word;
                              usCheckRights: Word;
                              usMemoSize: Word;
                              pucFields: PAceChar;
                              ulOptions: UNSIGNED32;
                              phTable: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDecryptRecord( hTable:ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDecryptTable( hTable:ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDeleteCustomKey( hIndex: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDeleteIndex( hIndex: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDeleteRecord( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDisableEncryption( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDisconnect( hConnect: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEnableEncryption( hTable: ADSHANDLE;
                                 pucPassword: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEncryptRecord( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEncryptTable( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEvalLogicalExpr( hIndex: ADSHANDLE;
                                pucExpr: PAceChar;
                                pbResult: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEvalNumericExpr( hIndex: ADSHANDLE;
                                pucExpr: PAceChar;
                                pdResult: pDOUBLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEvalStringExpr( hIndex: ADSHANDLE;
                               pucExpr: PAceChar;
                               pucResult: PAceChar;
                               pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEvalTestExpr( hIndex: ADSHANDLE;
                             pucExpr: PAceChar;
                             pusType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsExtractKey( hIndex: ADSHANDLE;
                           pucKey: PAceChar;
                           pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFailedTransactionRecovery( pucServer: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFileToBinary( hTable: ADSHANDLE;
                             pucFldName: PAceChar;
                             usBinaryType: Word;
                             pucFileName:  PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindConnection( pucServerName: PAceChar;
                               phConnect: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindConnection25( pucFullPath: PAceChar;
                                 phConnect: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetAllIndexes( hTable: ADSHANDLE;
                              ahIndex: PADSIndexArray;
                              pusArrayLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFTSIndexes( hTable: ADSHANDLE;
                              ahIndex: PADSIndexArray;
                              pusArrayLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetAllLocks( hTable: ADSHANDLE;
                            aulLocks: pointer;
                            pusArrayLen:pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetAllTables( ahTable: pointer;
                             pusArrayLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsGetBinary( hTable: ADSHANDLE;
                          pucFldName: PAceChar;
                          ulOffset: UNSIGNED32;
                          pucBuf: PAceBinary;
                          pulLen: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetBinaryLength( hTable: ADSHANDLE;
                                pucFldName: PAceChar;
                                pulLength: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetBookmark( hTable: ADSHANDLE;
                            phBookmark: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetBookmark60( hObj        : ADSHANDLE;
                              pucBookmark : PAceChar;
                              pulLength   : pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetBookmarkLength( hObj      : ADSHANDLE;
                                  pulLength : pUNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCompareBookmarks( pucBookmark1 : PAceChar;
                                 pucBookmark2 : PAceChar;
                                 plResult     : pSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetCollationLang( pucLang: PAceChar;
                                 pusLen:pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetConnectionType( hConnect: ADSHANDLE;
                                  pusConnectType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetConnectionPath( hConnect: ADSHANDLE;
                                  pucConnectionPath: PAceChar;
                                  pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetConnectionProperty( hConnect: ADSHANDLE;
                                      usPropertyID: UNSIGNED16;
                                      pvProperty: pointer;
                                      pulPropertyLen: PUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDate( hTable: ADSHANDLE;
                        pucFldName: PAceChar;
                        pucBuf: PAceChar;
                        pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDateFormat( pucFormat: PAceChar;
                              pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDateFormat60( hConnect: ADSHANDLE;
                                pucFormat: PAceChar;
                                pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDecimals( pusDecimals: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDefault( pucDefault: PAceChar;
                           pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDeleted( pbUseDeleted: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetDouble( hTable: ADSHANDLE;
                          pucFldName: PAceChar;
                          pdValue: pDOUBLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetEpoch( pusCentury: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetErrorString( ulErrCode: UNSIGNED32;
                               pucBuf: PAceChar;
                               pusBufLen: pWord): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetExact( pbExact: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetExact22( hObj: ADSHANDLE;
                           pbExact: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetField( hTable: ADSHANDLE;
                         pucFldName: PAceChar;
                         pucBuf: PAceChar;
                         pulLen: pUNSIGNED32;
                         usOption: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFieldDecimals( hTable: ADSHANDLE;
                                 pucFldName: PAceChar;
                                 pusDecimals: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFieldLength( hTable: ADSHANDLE;
                               pucFldName: PAceChar;
                               pulLength: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFieldName( hTable: ADSHANDLE;
                             usFld: Word;
                             pucName: PAceChar;
                             pusBufLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFieldNum( hTable: ADSHANDLE;
                            pucFldName: PAceChar;
                            pusNum: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFieldOffset( hTable: ADSHANDLE;
                               pucFldName: PAceChar;
                               pulOffset: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFieldType( hTable: ADSHANDLE;
                             pucFldName: PAceChar;
                             pusType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFilter( hTable: ADSHANDLE;
                          pucFilter: PAceChar;
                          pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetHandleLong( hObj: ADSHANDLE;
                              pulVal: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetHandleType( hObj: ADSHANDLE;
                              pusType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexCondition( hIndex: ADSHANDLE;
                                  pucExpr: PAceChar;
                                  pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexExpr( hIndex: ADSHANDLE;
                             pucExpr: PAceChar;
                             pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexFilename( hIndex: ADSHANDLE;
                                 usOption: Word;
                                 pucName: PAceChar;
                                 pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexHandle( hTable: ADSHANDLE;
                               pucIndexOrder: PAceChar;
                               phIndex: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexHandleByExpr( hTable : ADSHANDLE;
                                     pucExpr : PAceChar;
                                     ulDescending : UNSIGNED32;
                                     phIndex: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexHandleByOrder( hTable: ADSHANDLE;
                                      usIndexOrder: Word;
                                      phIndex: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexName( hIndex: ADSHANDLE;
                             pucName: PAceChar;
                             pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetIndexOrderByHandle( hIndex: ADSHANDLE;
                                      pusIndexOrder: pWord): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetFTSIndexInfo( hIndex: ADSHANDLE;
                                pucOutput : PAceChar;
                                pulBufLen: pUNSIGNED32;
                                ppucField: pPChar;
                                pulMinWordLen: pUNSIGNED32;
                                pulMaxWordLen: pUNSIGNED32;
                                ppucDelimiters: pPChar;
                                ppucNoiseWords: pPChar;
                                ppucDropChars: pPChar;
                                ppucConditionalChars: pPChar;
                                ppucReserved1: pPChar;
                                ppucReserved2: pPChar;
                                pulOptions: pUNSIGNED32): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetJulian( hTable: ADSHANDLE;
                          pucFldName: PAceChar;
                          plDate: pSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetKeyColumn( hCursor: ADSHANDLE;
                             pucKeyColumn: PAceChar;
                             pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetKeyCount( hIndex: ADSHANDLE;
                            usFilterOption: Word;
                            pulCount: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetKeyNum( hIndex: ADSHANDLE;
                          usFilterOption: Word;
                          pulKey: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetKeyLength( hIndex: ADSHANDLE;
                             pusKeyLength: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetKeyType( hIndex: ADSHANDLE;
                           pusKeyType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetLastError( pulErrCode: pUNSIGNED32;
                             pucBuf: PAceChar;
                             pusBufLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetLastTableUpdate( hTable: ADSHANDLE;
                                   pucDate: PAceChar;
                                   pusDateLen: pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetLogical( hTable: ADSHANDLE;
                           pucFldName: PAceChar;
                           pbValue: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetLong( hTable: ADSHANDLE;
                        pucFldName: PAceChar;
                        plValue: pSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

{$IFDEF ADSDELPHI5_OR_NEWER}
   function AdsGetLongLong( hTable: ADSHANDLE;
                            pucFldName: PAceChar;
                            pqValue: pSIGNED64 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}
{$ENDIF}

   function AdsGetMemoBlockSize( hTable: ADSHANDLE;
                                 pusBlockSize:  pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetMemoDataType( hTable: ADSHANDLE;
                                pucFldName: PAceChar;
                                pusType:  pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetMemoLength( hTable: ADSHANDLE;
                              pucFldName: PAceChar;
                              pulLength: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetMilliseconds( hTable: ADSHANDLE;
                                pucFldName: PAceChar;
                                plTime: pSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}
{$IFDEF ADSDELPHI5_OR_NEWER}
   function AdsGetMoney( hTable: ADSHANDLE;
                         pucFldName: PAceChar;
                         pqValue: pSIGNED64 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}
{$ENDIF}

   function AdsGetNumFields( hTable: ADSHANDLE;
                             pusCount: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetNumIndexes( hTable: ADSHANDLE;
                              pusNum: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetNumFTSIndexes( hTable: ADSHANDLE;
                                 pusNum: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetNumLocks( hTable: ADSHANDLE;
                            pusNum: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetNumOpenTables( pusNum: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetRecord( hTable: ADSHANDLE;
                          pucRec: PAceChar;
                          pulLen: pUNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetRecordCount( hTable: ADSHANDLE;
                               usFilterOption: Word;
                               pulCount: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetRecordNum( hTable: ADSHANDLE;
                             usFilterOption: Word;
                             pulRec: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetRecordLength( hTable: ADSHANDLE;
                                pulLength: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetRecordCRC( hTable: ADSHANDLE;
                             pulCRC: pUNSIGNED32;
                             ulOptions: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetRelKeyPos( hIndex: ADSHANDLE;
                             pdPos: pDOUBLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetScope( hIndex: ADSHANDLE;
                         usScopeOption: Word;
                         pucScope: PAceChar;
                         pusBufLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetSearchPath( pucPath: PAceChar;
                              pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetServerName( hConnect: ADSHANDLE;
                              pucName: PAceChar;
                              pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetServerTime( hConnect: ADSHANDLE;
                              pucDateBuf: PAceChar;
                              pusDateBufLen: pWord;
                              plTime: pSIGNED32;
                              pucTimeBuf: PAceChar;
                              pusTimeBufLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetShort( hTable: ADSHANDLE;
                         pucFldName: PAceChar;
                         psValue: pSIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetString( hTable: ADSHANDLE;
                          pucFldName: PAceChar;
                          pucBuf: PAceChar;
                          pulLen: pUNSIGNED32;
                          usOption: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableAlias( hTable: ADSHANDLE;
                              pucAlias: PAceChar;
                              pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableCharType( hTable: ADSHANDLE;
                                 pusCharType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableConnection( hTable: ADSHANDLE;
                                   phConnect: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableFilename( hTable: ADSHANDLE;
                                 usOption: Word;
                                 pucName: PAceChar;
                                 pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableHandle( pucName: PAceChar;
                               phTable: pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableLockType( hTable: ADSHANDLE;
                                 pusLockType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableMemoSize( hTable: ADSHANDLE;
                                 pusMemoSize: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableOpenOptions( hTable: ADSHANDLE;
                                    pulOptions: pUNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableRights( hTable: ADSHANDLE;
                               pusRights: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTableType( hTable: ADSHANDLE;
                             pusType: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetTime( hTable: ADSHANDLE;
                        pucFldName: PAceChar;
                        pucBuf: PAceChar;
                        pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetVersion( pulMajor: pUNSIGNED32;
                           pulMinor: pUNSIGNED32;
                           pucLetter: PAceChar;
                           pucDesc: PAceChar;
                           pusDescLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGotoBookmark( hTable: ADSHANDLE;
                             hBookmark: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGotoBookmark60( hObj: ADSHANDLE;
                               pucBookmark: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGotoBottom( hObj: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGotoRecord( hTable: ADSHANDLE;
                           ulRec: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGotoTop( hObj: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsImageToClipboard( hTable: ADSHANDLE;
                                 pucFldName: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsInitRawKey( hIndex: ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsInTransaction( hConnect: ADSHANDLE;
                              pbInTrans: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsEmpty( hTable: ADSHANDLE;
                        pucFldName: PAceChar;
                        pbEmpty: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsExprValid( hTable: ADSHANDLE;
                            pucExpr: PAceChar;
                            pbValid: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsFound( hObj: ADSHANDLE;
                        pbFound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexCompound( hIndex: ADSHANDLE;
                                pbCompound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexCustom( hIndex: ADSHANDLE;
                              pbCustom: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexDescending( hIndex: ADSHANDLE;
                                  pbDescending: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexPrimaryKey( hIndex: ADSHANDLE;
                                  pbPrimaryKey: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexFTS( hIndex: ADSHANDLE;
                           pbFTS: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexUnique( hIndex: ADSHANDLE;
                              pbUnique: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsRecordDeleted( hTable: ADSHANDLE;
                                pbDeleted: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsRecordEncrypted( hTable: ADSHANDLE;
                                  pbEncrypted: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsRecordLocked( hTable: ADSHANDLE;
                               ulRec: UNSIGNED32;
                               pbLocked: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsRecordVisible( hObj: ADSHANDLE;
                                pbVisible: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsServerLoaded( pucServer: PAceChar;
                               pbLoaded: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsTableEncrypted( hTable: ADSHANDLE;
                                 pbEncrypted: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsTableLocked( hTable: ADSHANDLE;
                              pbLocked: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsLocate( hTable: ADSHANDLE;
                       pucExpr: PAceChar;
                       bForward: Word;
                       pbFound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsLockRecord( hTable:  ADSHANDLE;
                           ulRec:  UNSIGNED32 ):  UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsLockTable( hTable:  ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsLookupKey( hIndex: ADSHANDLE;
                          pucKey: PAceChar;
                          usKeyLen: Word;
                          usDataType: Word;
                          pbFound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   { begin Management APIs }
   function AdsMgConnect( pucServerName : PAceChar;
                          pucUserName : PAceChar;
                          pucPassword : PAceChar;
                          phMgmtHandle : pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgDisconnect( hConnect: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgDumpInternalTables( hMgmtHandle : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetCommStats( hMgmtHandle : ADSHANDLE;
                               pstCommStats : pADS_MGMT_COMM_STATS;
                               pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgResetCommStats( hMgmtHandle : ADSHANDLE ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetConfigInfo( hMgmtHandle : ADSHANDLE;
                                pstConfigValues : pADS_MGMT_CONFIG_PARAMS;
                                pusConfigValuesStructSize : pWord;
                                pstConfigMemory : pADS_MGMT_CONFIG_MEMORY;
                                pusConfigMemoryStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetInstallInfo( hMgmtHandle : ADSHANDLE;
                                 pstInstallInfo : pADS_MGMT_INSTALL_INFO;
                                 pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetActivityInfo( hMgmtHandle : ADSHANDLE;
                                  pstActivityInfo : pADS_MGMT_ACTIVITY_INFO;
                                  pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetUserNames( hMgmtHandle : ADSHANDLE;
                               pucFileName : PAceChar;
                               astUserInfo : PADSMgUserArray;
                               pusArrayLen : pWord;
                               pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetOpenTables( hMgmtHandle : ADSHANDLE;
                                pucUserName : PAceChar;
                                usConnNumber : UNSIGNED16;
                                astOpenTableInfo : PADSMgTableArray;
                                pusArrayLen : pWord;
                                pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetOpenIndexes( hMgmtHandle : ADSHANDLE;
                                 pucTableName : PAceChar;
                                 pucUserName : PAceChar;
                                 usConnNumber : UNSIGNED16;
                                 astOpenIndexInfo : PADSMgIndexArray;
                                 pusArrayLen : pWord;
                                 pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetLocks( hMgmtHandle : ADSHANDLE;
                           pucTableName : PAceChar;
                           pucUserName : PAceChar;
                           usConnNumber : UNSIGNED16;
                           astRecordInfo : PADSMgLocksArray;
                           pusArrayLen : pWord;
                           pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetServerType( hMgmtHandle : ADSHANDLE;
                                pusServerType : pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetWorkerThreadActivity( hMgmtHandle : ADSHANDLE;
                                          astThreadActivity: PADSMgThreadsArray;
                                          pusArrayLen : pWord;
                                          pusStructSize : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgKillUser( hMgmtHandle : ADSHANDLE;
                           pucUserName : PAceChar;
                           usConnNumber : UNSIGNED16 ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsMgGetLockOwner( hMgmtHandle : ADSHANDLE;
                               pucTableName : PAceChar;
                               ulRecordNumber: UNSIGNED32;
                               pstUserInfo : pADS_MGMT_USER_INFO;
                               pusStructSize : pWord;
                               pusLockType : pWord ):UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}
   { end Management APIs }


   function AdsOpenIndex( hTable:  ADSHANDLE;
                          pucName: PAceChar;
                          ahIndex:  PADSIndexArray;
                          pusArrayLen:  pWord ):  UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsOpenTable( hConnect:  ADSHANDLE;
                          pucName:  PAceChar;
                          pucAlias:  PAceChar;
                          usTableType: Word;
                          usCharType: Word;
                          usLockType: Word;
                          usCheckRights: Word;
                          ulOptions: UNSIGNED32;
                          phTable: pADSHANDLE ):  UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsPackTable( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRecallRecord( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRecallAllRecords( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRefreshRecord( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRegisterProgressCallback( Callback:  TProgressCallback ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsReindex( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsReindex61( hTable: ADSHANDLE;
                          ulPageSize: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsReindexFTS( hTable: ADSHANDLE;
                           ulPageSize: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsResetConnection( hConnect: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRollbackTransaction( hConnect: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSeek( hIndex: ADSHANDLE;
                     pucKey: PAceChar;
                     usKeyLen: Word;
                     usDataType: Word;
                     usSeekType: Word;
                     pbFound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSeekLast( hIndex: ADSHANDLE;
                         pucKey: PAceChar;
                         usKeyLen: Word;
                         usDataType: Word;
                         pbFound: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetBinary( hTable: ADSHANDLE;
                          pucFldName: PAceChar;
                          usBinaryType: Word;
                          ulTotalLength: UNSIGNED32;
                          ulOffset:  UNSIGNED32;
                          pucBuf: PAceBinary;
                          ulLen: UNSIGNED32): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetCollationLang( pucLang: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetDate( hObj: ADSHANDLE;
                        pucFldName: PAceChar;
                        pucValue: PAceChar;
                        usLen: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetDateFormat( pucFormat: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetDateFormat60( hConnect: ADSHANDLE;
                                pucFormat: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetDecimals( usDecimals: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetDefault( pucDefault: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsShowDeleted( bShowDeleted: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetDouble( hObj: ADSHANDLE;
                          pucFldName: PAceChar;
                          dValue: Double ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetEmpty( hObj: ADSHANDLE;
                         pucFldName: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetEpoch( usCentury: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetExact( bExact: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetExact22( hObj: ADSHANDLE;
                           bExact: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetField( hObj: ADSHANDLE;
                         pucFldName: PAceChar;
                         pucBuf: PAceChar;
                         ulLen: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetFilter( hTable: ADSHANDLE;
                          pucFilter: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetHandleLong( hObj: ADSHANDLE;
                              ulVal: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetJulian( hObj: ADSHANDLE;
                          pucFldName: PAceChar;
                          lDate: SIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetLogical( hObj: ADSHANDLE;
                           pucFldName: PAceChar;
                           bValue: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetLong( hObj: ADSHANDLE;
                        pucFldName: PAceChar;
                        lValue: SIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

{$ifdef ADSDELPHI5_OR_NEWER}
   function AdsSetLongLong( hObj: ADSHANDLE;
                            pucFldName: PAceChar;
                            qValue: SIGNED64 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}
{$endif}

   function AdsSetMilliseconds( hObj: ADSHANDLE;
                                pucFldName: PAceChar;
                                lTime: SIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

{$ifdef ADSDELPHI5_OR_NEWER}
   function AdsSetMoney( hObj: ADSHANDLE;
                         pucFldName: PAceChar;
                         qValue: SIGNED64 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}
{$endif}

   function AdsSetRecord( hObj: ADSHANDLE;
                          pucRec: PAceChar;
                          ulLen: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetRelation( hTableParent: ADSHANDLE;
                            hIndexChild: ADSHANDLE;
                            pucExpr: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetRelKeyPos( hIndex: ADSHANDLE;
                             dPos: DOUBLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetScope( hIndex: ADSHANDLE;
                         usScopeOption: Word;
                         pucScope: PAceChar;
                         usScopeLen: Word;
                         usDataType: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetScopedRelation( hTableParent: ADSHANDLE;
                                  hIndexChild: ADSHANDLE;
                                  pucExpr: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetSearchPath( pucPath: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetServerType ( usServerOptions: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetShort( hObj: ADSHANDLE;
                         pucFldName: PAceChar;
                         sValue: SIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetString( hObj: ADSHANDLE;
                          pucFldName: PAceChar;
                          pucBuf: PAceChar;
                          ulLen: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsShowError( pucTitle: PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSkip( hObj: ADSHANDLE;
                     lRecs: SIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsThreadExit: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetTime( hObj: ADSHANDLE;
                        pucFldName: PAceChar;
                        pucValue: PAceChar;
                        usLen: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsUnlockRecord( hTable: ADSHANDLE;
                             ulRec: UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsUnlockTable( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsEncryptionEnabled( hTable: ADSHANDLE;
                                    pusIsValid: pWord): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsWriteAllRecords: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsWriteRecord( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsZapTable( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

{ AOF functions }
   function AdsSetAOF( hTable: ADSHANDLE;
                       pucFilter: PAceChar;
                       usOptions: UNSIGNED16): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearAOF( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRefreshAOF( hTable: ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetAOF( hTable: ADSHANDLE;
                       pucFilter: PAceChar;
                       pusLen: pWord): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetAOFOptLevel( hTable: ADSHANDLE;
                               pusOptLevel: pWord;
                               pucNonOpt: PAceChar;
                               pusLen: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEvalAOF( hTable: ADSHANDLE;
                        pucFilter: PAceChar;
                        pusOptLevel: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCustomizeAOF( hTable: ADSHANDLE;
                             ulNumRecords: UNSIGNED32;
                             pulRecords: pUNSIGNED32;
                             usOption: Word ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsRecordInAOF( hTable: ADSHANDLE;
                              ulRecordNum: UNSIGNED32;
                              pusIsInAOF: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsCreateSQLStatement( hConnect : ADSHANDLE;
                                   phStatement : pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsPrepareSQL( hStatement : ADSHANDLE;
                           pucSQL : PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsExecuteSQL( hStatement : ADSHANDLE;
                           phCursor : pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsExecuteSQLDirect( hStatement : ADSHANDLE;
                                 pucSQL : PAceChar;
                                 phCursor : pADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsCloseSQLStatement( hStatement : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtSetTableRights( hStatement : ADSHANDLE;
                                   usCheckRights : WORD ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtSetTableReadOnly( hStatement : ADSHANDLE;
                                     usReadOnly : UNSIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtSetTableLockType( hStatement : ADSHANDLE;
                                     usLockType : UNSIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtSetTableCharType( hStatement : ADSHANDLE;
                                     usCharType : UNSIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtSetTableType( hStatement : ADSHANDLE;
                                 usTableType : UNSIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtEnableEncryption( hStatement : ADSHANDLE;
                                     pcPassword : PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtDisableEncryption( hStatement : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtSetTablePassword( hStatement  : ADSHANDLE;
                                     pcTableName : PAceChar;
                                     pcPassword  : PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtClearTablePasswords( hStatement : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtReadAllColumns( hStatement : ADSHANDLE;
                                   usReadColumns : UNSIGNED16 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsSetTimeStamp( hObj : ADSHANDLE;
                             pucFldName : PAceChar;
                             pucBuf : PAceChar;
                             ulLen : UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearSQLParams( hStatement : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsStmtConstrainUpdates( hStatement : ADSHANDLE;
                                     usConstrain : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsClearSQLAbortFunc: UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRegisterSQLAbortFunc( Callback: TSQLAbortFunc ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsIndexUserDefined( hIndex : ADSHANDLE;
                                   pbUserDefined : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRegisterUDF( hObj: ADSHANDLE;
                            usType : UNSIGNED16;
                            Callback: TUDFFunc ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreate( pucDictionaryPath : PAceChar;
                         usEncrypt : UNSIGNED16;
                         pucDescription : PAceChar;
                         phDictionary : PADSHANDLE ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetDatabaseProperty( hDictionary : ADSHANDLE;
                              usPropertyID : UNSIGNED16;
                              pvProperty : pointer;
                              usPropertyLen : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetDatabaseProperty( hDictionary : ADSHANDLE;
                                      usPropertyID : UNSIGNED16;
                                      pucProperty : pointer;
                                      pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDAddTable( hDictionary   : ADSHANDLE;
                           pucTableName  : PAceChar;
                           pucTablePath  : PAceChar;
                           usTableType   : UNSIGNED16;
                           usCharType    : UNSIGNED16;
                           pucIndexFiles : PAceChar;
                           pucComments   : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDFindFirstObject( hObject : ADSHANDLE;
                                  usObjectType : UNSIGNED16;
                                  pucParentName : PAceChar;
                                  pucObjectName : PAceChar;
                                  pusObjectNameLen : PUNSIGNED16;
                                  phFindHandle : PADSHANDLE ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDFindNextObject( hObject : ADSHANDLE;
                                 hFindHandle : ADSHANDLE;
                                 pucObjectName : PAceChar;
                                 pusObjectNameLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDFindClose( hObject : ADSHANDLE; hFindHandle : ADSHANDLE ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveTable( hObject : ADSHANDLE;
                              pucTableName : PAceChar;
                              usDeleteFile : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRenameObject( hDictionary : ADSHANDLE;
                               pucObjectName : PAceChar;
                               pucNewObjectName : PAceChar;
                               usObjectType : UNSIGNED16;
                               ulOptions : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetTableProperty( hDictionary : ADSHANDLE;
                                   pucTableName : PAceChar;
                                   usPropertyID : UNSIGNED16;
                                   pvProperty : pointer;
                                   usPropertyLen : UNSIGNED16;
                                   usValidateOption : UNSIGNED16;
                                   pucFailTable : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetTableProperty( hObject : ADSHANDLE;
                                 pucTableName : PAceChar;
                                 usPropertyID : UNSIGNED16;
                                 pvProperty : pointer;
                                 pucPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsConnect60( pucServerPath : PAceChar;
                          usServerTypes : UNSIGNED16;
                          pucUserName   : PAceChar;
                          pucPassword   : PAceChar;
                          ulOptions     : UNSIGNED32;
                          phConnect     : PADSHANDLE ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetFieldProperty( hDictionary : ADSHANDLE;
                                   pucTableName : PAceChar;
                                   pucFieldName : PAceChar;
                                   usPropertyID : UNSIGNED16;
                                   pvProperty : pointer;
                                   usPropertyLength : UNSIGNED16;
                                   usValidateOption : UNSIGNED16;
                                   pucFailTable : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetFieldProperty( hObject : ADSHANDLE;
                                   pucTableName : PAceChar;
                                   pucFieldName : PAceChar;
                                   usPropertyID : UNSIGNED16;
                                   pucProperty : PAceChar;
                                   pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetIndexFileProperty( hObject : ADSHANDLE;
                                       pucTableName : PAceChar;
                                       pucIndexFileName : PAceChar;
                                       usPropertyID : UNSIGNED16;
                                       pvProperty : pointer;
                                       pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetIndexProperty( hObject : ADSHANDLE;
                                   pucTableName : PAceChar;
                                   pucIndexName : PAceChar;
                                   usPropertyID : UNSIGNED16;
                                   pvProperty : pointer;
                                   pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveIndexFile( hDictonary       : ADSHANDLE;
                                  pucTableName     : PAceChar;
                                  pucIndexFileName : PAceChar;
                                  ucDeletedFile    : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDAddIndexFile( hDictionary : ADSHANDLE;
                               pucTableName : PAceChar;
                               pucIndexFileName : PAceChar;
                               pucComment : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateRefIntegrity( hDictionary : ADSHANDLE;
                                     pucRIName : PAceChar;
                                     pucFailTableName : PAceChar;
                                     pucParentTableName : PAceChar;
                                     pucParentTagName : PAceChar;
                                     pucChildTableName : PAceChar;
                                     pucChildTagName : PAceChar;
                                     usUpdateRule : UNSIGNED16;
                                     usDeleteRule : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateRefIntegrity62( hDictionary : ADSHANDLE;
                                       pucRIName : PAceChar;
                                       pucFailTableName : PAceChar;
                                       pucParentTableName : PAceChar;
                                       pucParentTagName : PAceChar;
                                       pucChildTableName : PAceChar;
                                       pucChildTagName : PAceChar;
                                       usUpdateRule : UNSIGNED16;
                                       usDeleteRule : UNSIGNED16;
                                       pucNoPrimaryKeyError : PAceChar;
                                       pucCascadeError : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveRefIntegrity( hDictionary : ADSHANDLE;
                                     pucRefName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetRefIntegrityProperty( hObject : ADSHANDLE;
                                       pucRefName : PAceChar;
                                       usPropertyID : UNSIGNED16;
                                       pucProperty : pointer;
                                       pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsDDDeleteIndex( hDictionary : ADSHANDLE;
                              pucTableName : PAceChar;
                              pucIndexName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDAddView( hDictionary : ADSHANDLE;
                          pucName : PAceChar;
                          pucCommnets : PAceChar;
                          pucSQL : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveView( hDictionary : ADSHANDLE;
                             pucName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateTrigger( hDictionary : ADSHANDLE;
                                pucName : PAceChar;
                                pucTableName : PAceChar;
                                ulTriggerType : UNSIGNED32;
                                ulEventTypes : UNSIGNED32;
                                ulContainerType : UNSIGNED32;
                                pucContainer : PAceChar;
                                pucFunctionName : PAceChar;
                                ulPriority : UNSIGNED32;
                                pucComments : PAceChar;
                                ulOptions : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveTrigger( hDictionary : ADSHANDLE;
                                pucName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetViewProperty( hDictionary : ADSHANDLE;
                                  pucViewName : PAceChar;
                                  usPropertyID : UNSIGNED16;
                                  pvproperty : pointer;
                                  usPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetViewProperty( hObj : ADSHANDLE;
                                  pucViewName : PAceChar;
                                  usPropertyID : UNSIGNED16;
                                  pvProperty : pointer;
                                  usPropertyLen : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetTriggerProperty( hDictionary : ADSHANDLE;
                                     pucTriggerName : PAceChar;
                                     usPropertyID : UNSIGNED16;
                                     pvproperty : pointer;
                                     usPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDisableLocalConnections : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetLastAutoinc( hObj : ADSHANDLE;
                               pulAutoincVal : PUNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetProcedureProperty( hObj : ADSHANDLE;
                                       pucProcName : PAceChar;
                                       usProperty  : UNSIGNED16;
                                       pvProperty  : pointer;
                                       usPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetProcedureProperty( hObj : ADSHANDLE;
                                       pucProcedureName : PAceChar;
                                       usPropertyID : UNSIGNED16;
                                       pvProperty : pointer;
                                       usPropertyLen : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateUser( hObj : ADSHANDLE;
                             pucGroupName : PAceChar;
                             pucUserName  : PAceChar;
                             pucPassword  : PAceChar;
                             pucDescription : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsDDDeleteUser( hObj : ADSHANDLE;
                             pucUserName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDAddUserToGroup( hObj : ADSHANDLE;
                                 pucGroupName : PAceChar;
                                 pucUserName  : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveUserFromGroup( hObj : ADSHANDLE;
                                      pucGroupName : PAceChar;
                                      pucUserName  : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateUserGroup( hObj : ADSHANDLE;
                                  pucGroupName : PAceChar;
                                  pucDescription : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDeleteUserGroup( hObj : ADSHANDLE;
                                  pucGroupName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetUserProperty( hObj : ADSHANDLE;
                                  pucUserName : PAceChar;
                                  usPropertyID : UNSIGNED16;
                                  pvProperty : pointer;
                                  usPropertyLen : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetUserProperty( hObj : ADSHANDLE;
                                  pucUserName : PAceChar;
                                  usPropertyID : UNSIGNED16;
                                  pvProperty : pointer;
                                  pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetUserGroupProperty( hObj : ADSHANDLE;
                                       pucGroupName : PAceChar;
                                       usPropertyID : UNSIGNED16;
                                       pvProperty : pointer;
                                       pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetUserGroupProperty( hObj : ADSHANDLE;
                                       pucGroupName : PAceChar;
                                       usPropertyID : UNSIGNED16;
                                       pvProperty : pointer;
                                       usPropertyLen : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsDDSetObjectAccessRights( hObj : ADSHANDLE;
                                        pucObjectName : PAceChar;
                                        pucAccessorName : PAceChar;
                                        pucAllowedRights : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDAddProcedure( hDictionary : ADSHANDLE;
                               pucName     : PAceChar;
                               pucDll      : PAceChar;
                               pucProcName : PAceChar;
                               ulInvokeOption : UNSIGNED32;
                               pucInParams : PAceChar;
                               pucOutParams : PAceChar;
                               pucComments  : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRemoveProcedure( hDictionary : ADSHANDLE;
                                  pucName     : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindClose( hConnect : ADSHANDLE; lHandle : SIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindFirstTable( hConnect     : ADSHANDLE;
                               pucFileMask  : PAceChar;
                               pucFirstFile : PAceChar;
                               pusFileLen   : pWord;
                               lHandle      : pSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindNextTable( hConnect    : ADSHANDLE;
                              lHandle     : SIGNED32;
                              pucFileName : PAceChar;
                              pusFileLen  : pWord ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindFirstTable62( hConnect     : ADSHANDLE;
                                 pucFileMask  : PAceChar;
                                 pucFirstDD   : PAceChar;
                                 pusDDLen     : pWord;
                                 pucFirstFile : PAceChar;
                                 pusFileLen   : pWord;
                                 lHandle      : pSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFindNextTable62( hConnect    : ADSHANDLE;
                                lHandle     : SIGNED32;
                                pucDDName   : PAceChar;
                                pusDDLen    : pWord;
                                pucFileName : PAceChar;
                                pusFileLen  : pWord ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetNumParams( hStatement   : ADSHANDLE;
                             pusNumParams : pWord ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRestructureTable( hObj          : ADSHANDLE;
                                 pucName       : PAceChar;
                                 pucPassword   : PAceChar;
                                 usTableType   : UNSIGNED16;
                                 usCharType    : UNSIGNED16;
                                 usLockType    : UNSIGNED16;
                                 usCheckRights : UNSIGNED16;
                                 pucAddFields  : PAceChar;
                                 pucDeleteFields : PAceChar;
                                 pucChangeFields : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetSQLStatementHandle( hCursor : ADSHANDLE;
                                      phStmt : PADSHANDLE ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetSQLStatement( hStmt : ADSHANDLE;
                                pucSQL : PAceChar;
                                pusLen : pWord) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsFlushFileBuffers( hObj : ADSHANDLE ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsRegisterCallbackFunction( Callback:  TCallbackFunction;
                                         ulCallbackID: UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDeployDatabase( pucDestination          : PAceChar;
                                 pucDestinationPassword  : PAceChar;
                                 pucSource               : PAceChar;
                                 pucSourcePassword       : PAceChar;
                                 usServerTypes           : UNSIGNED16;
                                 usValidateOption        : UNSIGNED16;
                                 usBackupFiles           : UNSIGNED16;
                                 ulOptions               : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsDDGetPermissions( hDBConn        : ADSHANDLE;
                                 pucGrantee     : PAceChar;
                                 usObjectType   : UNSIGNED16;
                                 pucObjectName  : PAceChar;
                                 pucParentName  : PAceChar;
                                 usGetInherited : UNSIGNED16;
                                 pulPermissions : pUNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGrantPermission( hAdminConn    : ADSHANDLE;
                                  usObjectType  : UNSIGNED16;
                                  pucObjectName : PAceChar;
                                  pucParentName : PAceChar;
                                  pucGrantee    : PAceChar;
                                  ulPermissions : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDRevokePermission( hAdminConn    : ADSHANDLE;
                                   usObjectType  : UNSIGNED16;
                                   pucObjectName : PAceChar;
                                   pucParentName : PAceChar;
                                   pucGrantee    : PAceChar;
                                   ulPermissions : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetLinkProperty( hConnect       : ADSHANDLE;
                                  pucLinkName    : PAceChar;
                                  usPropertyID   : UNSIGNED16;
                                  pvProperty     : pointer;
                                  pusPropertyLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateLink( hDBConn         : ADSHANDLE;
                             pucLinkAlias    : PAceChar;
                             pucLinkedDDPath : PAceChar;
                             pucUserName     : PAceChar;
                             pucPassword     : PAceChar;
                             ulOptions       : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDModifyLink( hDBConn         : ADSHANDLE;
                             pucLinkAlias    : PAceChar;
                             pucLinkedDDPath : PAceChar;
                             pucUserName     : PAceChar;
                             pucPassword     : PAceChar;
                             ulOptions       : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDropLink( hDBConn      : ADSHANDLE;
                           pucLinkedDD  : PAceChar;
                           usDropGlobal : UNSIGNED16  ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetActiveLinkInfo( hDBConn      : ADSHANDLE;
                                  usLinkNum    : UNSIGNED16;
                                  pucLinkInfo  : PAceChar;
                                  pusBufferLen : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsGetNumActiveLinks( hDBConn     : ADSHANDLE;
                                  pusNumLinks : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsVerifySQL( hStatement : ADSHANDLE;
                          pucSQL : PAceChar ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDisableUniqueEnforcement( hConnection : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEnableUniqueEnforcement( hConnection : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDisableRI( hConnection : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEnableRI( hConnection : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDisableAutoIncEnforcement( hConnection : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsEnableAutoIncEnforcement( hConnection : ADSHANDLE ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsIsConnectionAlive( hConnect: ADSHANDLE;
                                  pbConnectionIsAlive: pWord ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDMoveObjectFile( hDictionary   : ADSHANDLE;
                                 usObjectType  : UNSIGNED16;
                                 pucObjectName : PAceChar;
                                 pucNewPath    : PAceChar;
                                 pucIndexFiles : PAceChar;
                                 pucParent     : PAceChar;
                                 ulOptions     : UNSIGNED32 ): UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreatePublication( hDBConn            : ADSHANDLE;
                                    pucPublicationName : PAceChar;
                                    pucComments        : PAceChar;
                                    ulOptions          : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetPublicationProperty( hDBConn            : ADSHANDLE;
                                         pucPublicationName : PAceChar;
                                         usPropertyID       : UNSIGNED16;
                                         pvProperty         : pointer;
                                         pusPropertyLen     : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetPublicationProperty( hDBConn            : ADSHANDLE;
                                         pucPublicationName : PAceChar;
                                         usPropertyID       : UNSIGNED16;
                                         pvProperty         : pointer;
                                         usPropertyLen      : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDeletePublication( hDBConn            : ADSHANDLE;
                                    pucPublicationName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateArticle( hDBConn            : ADSHANDLE;
                                pucPublicationName : PAceChar;
                                pucObjectName      : PAceChar;
                                pucRowIdentColumns : PAceChar;
                                pucFilter          : PAceChar;
                                ulOptions          : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetArticleProperty( hDBConn            : ADSHANDLE;
                                     pucPublicationName : PAceChar;
                                     pucObjectName      : PAceChar;
                                     usPropertyID       : UNSIGNED16;
                                     pvProperty         : pointer;
                                     pusPropertyLen     : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetArticleProperty( hDBConn            : ADSHANDLE;
                                     pucPublicationName : PAceChar;
                                     pucObjectName      : PAceChar;
                                     usPropertyID       : UNSIGNED16;
                                     pvProperty         : pointer;
                                     usPropertyLen      : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDeleteArticle( hDBConn            : ADSHANDLE;
                                pucPublicationName : PAceChar;
                                pucObjectName      : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDCreateSubscription( hDBConn             : ADSHANDLE;
                                     pucSubscriptionName : PAceChar;
                                     pucPublicationName  : PAceChar;
                                     pucTarget           : PAceChar;
                                     pucUser             : PAceChar;
                                     pucPassword         : PAceChar;
                                     pucReplicationQueue : PAceChar;
                                     usForward           : UNSIGNED16;
                                     pucComments         : PAceChar;
                                     ulOptions           : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDGetSubscriptionProperty( hDBConn             : ADSHANDLE;
                                          pucSubscriptionName : PAceChar;
                                          usPropertyID        : UNSIGNED16;
                                          pvProperty          : pointer;
                                          pusPropertyLen      : PUNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetSubscriptionProperty( hDBConn             : ADSHANDLE;
                                          pucSubscriptionName : PAceChar;
                                          usPropertyID        : UNSIGNED16;
                                          pvProperty          : pointer;
                                          usPropertyLen       : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDeleteSubscription( hDBConn             : ADSHANDLE;
                                     pucSubscriptionName : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsRollbackTransaction80( hConnect     : ADSHANDLE;
                                      pucSavepoint : PAceChar;
                                      ulOptions    : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}


   function AdsCreateSavepoint( hConnect     : ADSHANDLE;
                                pucSavepoint : PAceChar;
                                ulOptions    : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDDisableTriggers( hDictionary   : ADSHANDLE;
                                  pucObjectName : PAceChar;
                                  pucParent     : PAceChar;
                                  ulOptions     : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDEnableTriggers( hDictionary   : ADSHANDLE;
                                 pucObjectName : PAceChar;
                                 pucParent     : PAceChar;
                                 ulOptions     : UNSIGNED32 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetTriggerProperty( hDictionary : ADSHANDLE;
                                     pucTriggerName : PAceChar;
                                     usPropertyID : UNSIGNED16;
                                     pvProperty : pointer;
                                     usPropertyLen : UNSIGNED16 ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDFreeTable( pucTableName : PAceChar; pucPassword : PAceChar ) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function AdsDDSetIndexProperty( hAdminConn   : ADSHANDLE;
                                   pucTableName : PAceChar;
                                   pucIndexName : PAceChar;
                                   usPropertyID : UNSIGNED16;
                                   pvProperty   : pointer;
                                   usPropertyLen : UNSIGNED16) : UNSIGNED32; {$IFDEF WIN32}stdcall;{$ENDIF}{$IFDEF LINUX}cdecl;{$ENDIF}

   function GetServerTypeString(usServerType:UNSIGNED16):string;

implementation

   function GetServerTypeString(usServerType:UNSIGNED16):string;
     begin
       case usServerType of
        {ADS_MGMT_NETWARE4_OR_OLDER_SERVER}
         ADS_MGMT_NETWARE_SERVER:           result:= 'ADS Server Type = Netware4 or older';
         ADS_MGMT_NT_SERVER:                result:= 'ADS Server Type = NT';
         ADS_MGMT_LOCAL_SERVER:             result:= 'ADS Server Type = Local';
         ADS_MGMT_WIN9X_SERVER:             result:= 'ADS Server Type = WIN9X';
         ADS_MGMT_NETWARE5_OR_NEWER_SERVER: result:= 'ADS Server Type = Netware5 or newer';
         ADS_MGMT_LINUX_SERVER:             result:= 'ADS Server Type = Linux';
         ADS_MGMT_NT_SERVER_64_BIT:         result:= 'ADS Server Type = NT 64bit';
         ADS_MGMT_LINUX_SERVER_64_BIT:      result:= 'ADS Server Type = Linux 64bit';
         else                               result:= '';
       end;
     end;

   function AdsDDRemoveProcedure; external ACE_LIB name 'AdsDDRemoveProcedure';
   function AdsDDAddProcedure; external ACE_LIB name 'AdsDDAddProcedure';
   function AdsDDSetUserGroupProperty; external ACE_LIB name 'AdsDDSetUserGroupProperty';
   function AdsDDGetUserGroupProperty; external ACE_LIB name 'AdsDDGetUserGroupProperty';
   function AdsDDSetObjectAccessRights; external ACE_LIB name 'AdsDDSetObjectAccessRights';
   function AdsDDGetUserProperty; external ACE_LIB name 'AdsDDGetUserProperty';
   function AdsDDSetUserProperty; external ACE_LIB name 'AdsDDSetUserProperty';
   function AdsDDDeleteUserGroup; external ACE_LIB name 'AdsDDDeleteUserGroup';
   function AdsDDCreateUserGroup; external ACE_LIB name 'AdsDDCreateUserGroup';
   function AdsDDRemoveUserFromGroup; external ACE_LIB name 'AdsDDRemoveUserFromGroup';
   function AdsDDAddUserToGroup; external ACE_LIB name 'AdsDDAddUserToGroup';
   function AdsDDDeleteUser; external ACE_LIB name 'AdsDDDeleteUser';
   function AdsDDCreateUser; external ACE_LIB name 'AdsDDCreateUser';
   function AdsDDGetProcedureProperty; external ACE_LIB name 'AdsDDGetProcedureProperty';
   function AdsDDSetProcedureProperty; external ACE_LIB name 'AdsDDSetProcedureProperty';
   function AdsDDAddView; external ACE_LIB name 'AdsDDAddView';
   function AdsDDRemoveView; external ACE_LIB name 'AdsDDRemoveView';
   function AdsDDGetViewProperty; external ACE_LIB name 'AdsDDGetViewProperty';
   function AdsDDSetViewProperty; external ACE_LIB name 'AdsDDSetViewProperty';
   function AdsDDDeleteIndex; external ACE_LIB name 'AdsDDDeleteIndex';
   function AdsDDCreate; external ACE_LIB name 'AdsDDCreate';
   function AdsDDGetRefIntegrityProperty; external ACE_LIB name 'AdsDDGetRefIntegrityProperty';
   function AdsDDRemoveRefIntegrity; external ACE_LIB name 'AdsDDRemoveRefIntegrity';
   function AdsDDCreateRefIntegrity; external ACE_LIB name 'AdsDDCreateRefIntegrity';
   function AdsDDAddIndexFile; external ACE_LIB name 'AdsDDAddIndexFile';
   function AdsDDRemoveIndexFile; external ACE_LIB name 'AdsDDRemoveIndexFile';
   function AdsDDRenameObject; external ACE_LIB name 'AdsDDRenameObject';
   function AdsDDGetFieldProperty; external ACE_LIB name 'AdsDDGetFieldProperty';
   function AdsDDGetIndexFileProperty; external ACE_LIB name 'AdsDDGetIndexFileProperty';
   function AdsDDGetIndexProperty; external ACE_LIB name 'AdsDDGetIndexProperty';
   function AdsDDSetFieldProperty; external ACE_LIB name 'AdsDDSetFieldProperty';
   function AdsConnect60; external ACE_LIB name 'AdsConnect60';
   function AdsDDGetTableProperty; external ACE_LIB name 'AdsDDGetTableProperty';
   function AdsDDSetTableProperty; external ACE_LIB name 'AdsDDSetTableProperty';
   function AdsDDRemoveTable; external ACE_LIB name 'AdsDDRemoveTable';
   function AdsDDFindClose; external ACE_LIB name 'AdsDDFindClose';
   function AdsDDFindNextObject; external ACE_LIB name 'AdsDDFindNextObject';
   function AdsDDFindFirstObject; external ACE_LIB name 'AdsDDFindFirstObject';
   function AdsDDAddTable; external ACE_LIB name 'AdsDDAddTable';
   function AdsDDGetDatabaseProperty; external ACE_LIB name 'AdsDDGetDatabaseProperty';
   function AdsDDSetDatabaseProperty; external ACE_LIB name 'AdsDDSetDatabaseProperty';
   function AdsAddCustomKey; external ACE_LIB name 'AdsAddCustomKey';
   function AdsAppendRecord; external ACE_LIB name 'AdsAppendRecord';
   function AdsApplicationExit; external ACE_LIB name 'AdsApplicationExit';
   function AdsAtBOF; external ACE_LIB name 'AdsAtBOF';
   function AdsAtEOF; external ACE_LIB name 'AdsAtEOF';
   function AdsBeginTransaction; external ACE_LIB name 'AdsBeginTransaction';
   function AdsBinaryToFile; external ACE_LIB name 'AdsBinaryToFile';
   function AdsBuildRawKey; external ACE_LIB name 'AdsBuildRawKey';
   function AdsCacheOpenCursors; external ACE_LIB name 'AdsCacheOpenCursors';
   function AdsCacheOpenTables; external ACE_LIB name 'AdsCacheOpenTables';
   function AdsCacheRecords; external ACE_LIB name 'AdsCacheRecords';
   function AdsCancelUpdate; external ACE_LIB name 'AdsCancelUpdate';
   function AdsCheckExistence; external ACE_LIB name 'AdsCheckExistence';
   function AdsClearAOF; external ACE_LIB name 'AdsClearAOF';
   function AdsClearAllScopes; external ACE_LIB name 'AdsClearAllScopes';
   function AdsClearCallbackFunction; external ACE_LIB name 'AdsClearCallbackFunction';
   function AdsClearDefault; external ACE_LIB name 'AdsClearDefault';
   function AdsClearFilter; external ACE_LIB name 'AdsClearFilter';
   function AdsClearProgressCallback; external ACE_LIB name 'AdsClearProgressCallback';
   function AdsClearRelation; external ACE_LIB name 'AdsClearRelation';
   function AdsClearSQLAbortFunc; external ACE_LIB name 'AdsClearSQLAbortFunc';
   function AdsClearSQLParams; external ACE_LIB name 'AdsClearSQLParams';
   function AdsClearScope; external ACE_LIB name 'AdsClearScope';
   function AdsCloneTable; external ACE_LIB name 'AdsCloneTable';
   function AdsCloseAllIndexes; external ACE_LIB name 'AdsCloseAllIndexes';
   function AdsCloseAllTables; external ACE_LIB name 'AdsCloseAllTables';
   function AdsCloseIndex; external ACE_LIB name 'AdsCloseIndex';
   function AdsCloseSQLStatement; external ACE_LIB name 'AdsCloseSQLStatement';
   function AdsCloseTable; external ACE_LIB name 'AdsCloseTable';
   function AdsCloseCachedTables; external ACE_LIB name 'AdsCloseCachedTables';
   function AdsCommitTransaction; external ACE_LIB name 'AdsCommitTransaction';
   function AdsConnect; external ACE_LIB name 'AdsConnect';
   function AdsConnect26; external ACE_LIB name 'AdsConnect26';
   function AdsContinue; external ACE_LIB name 'AdsContinue';
   function AdsConvertTable; external ACE_LIB name 'AdsConvertTable';
   function AdsCopyTable; external ACE_LIB name 'AdsCopyTable';
   function AdsCopyTableContents; external ACE_LIB name 'AdsCopyTableContents';
   function AdsCopyTableStructure; external ACE_LIB name 'AdsCopyTableStructure';
   function AdsCreateIndex; external ACE_LIB name 'AdsCreateIndex';
   function AdsCreateIndex61; external ACE_LIB name 'AdsCreateIndex61';
   function AdsCreateFTSIndex; external ACE_LIB name 'AdsCreateFTSIndex';
   function AdsCreateSQLStatement; external ACE_LIB name 'AdsCreateSQLStatement';
   function AdsCreateTable; external ACE_LIB name 'AdsCreateTable';
   function AdsCreateTable71; external ACE_LIB name 'AdsCreateTable71';
   function AdsCustomizeAOF; external ACE_LIB name 'AdsCustomizeAOF';
   function AdsDecryptRecord; external ACE_LIB name 'AdsDecryptRecord';
   function AdsDecryptTable; external ACE_LIB name 'AdsDecryptTable';
   function AdsDeleteCustomKey; external ACE_LIB name 'AdsDeleteCustomKey';
   function AdsDeleteIndex; external ACE_LIB name 'AdsDeleteIndex';
   function AdsDeleteRecord; external ACE_LIB name 'AdsDeleteRecord';
   function AdsDisableEncryption; external ACE_LIB name 'AdsDisableEncryption';
   function AdsDisconnect; external ACE_LIB name 'AdsDisconnect';
   function AdsEnableEncryption; external ACE_LIB name 'AdsEnableEncryption';
   function AdsEncryptRecord; external ACE_LIB name 'AdsEncryptRecord';
   function AdsEncryptTable; external ACE_LIB name 'AdsEncryptTable';
   function AdsEvalAOF; external ACE_LIB name 'AdsEvalAOF';
   function AdsEvalLogicalExpr; external ACE_LIB name 'AdsEvalLogicalExpr';
   function AdsEvalNumericExpr; external ACE_LIB name 'AdsEvalNumericExpr';
   function AdsEvalStringExpr; external ACE_LIB name 'AdsEvalStringExpr';
   function AdsEvalTestExpr; external ACE_LIB name 'AdsEvalTestExpr';
   function AdsExecuteSQL; external ACE_LIB name 'AdsExecuteSQL';
   function AdsExecuteSQLDirect; external ACE_LIB name 'AdsExecuteSQLDirect';
   function AdsExtractKey; external ACE_LIB name 'AdsExtractKey';
   function AdsFailedTransactionRecovery; external ACE_LIB name 'AdsFailedTransactionRecovery';
   function AdsFileToBinary; external ACE_LIB name 'AdsFileToBinary';
   function AdsFindConnection; external ACE_LIB name 'AdsFindConnection';
   function AdsFindConnection25; external ACE_LIB name 'AdsFindConnection25';
   function AdsGetAOF; external ACE_LIB name 'AdsGetAOF';
   function AdsGetAOFOptLevel; external ACE_LIB name 'AdsGetAOFOptLevel';
   function AdsGetAllIndexes; external ACE_LIB name 'AdsGetAllIndexes';
   function AdsGetFTSIndexes; external ACE_LIB name 'AdsGetFTSIndexes';
   function AdsGetAllLocks; external ACE_LIB name 'AdsGetAllLocks';
   function AdsGetAllTables; external ACE_LIB name 'AdsGetAllTables';
   function AdsGetBinary; external ACE_LIB name 'AdsGetBinary';
   function AdsGetBinaryLength; external ACE_LIB name 'AdsGetBinaryLength';
   function AdsGetBookmark; external ACE_LIB name 'AdsGetBookmark';
   function AdsGetBookmark60; external ACE_LIB name 'AdsGetBookmark60';
   function AdsGetBookmarkLength; external ACE_LIB name 'AdsGetBookmarkLength';
   function AdsCompareBookmarks; external ACE_LIB name 'AdsCompareBookmarks';
   function AdsGetCollationLang; external ACE_LIB name 'AdsGetCollationLang';
   function AdsGetConnectionType; external ACE_LIB name 'AdsGetConnectionType';
   function AdsGetConnectionPath; external ACE_LIB name 'AdsGetConnectionPath';
   function AdsGetConnectionProperty; external ACE_LIB name 'AdsGetConnectionProperty';
   function AdsGetDate; external ACE_LIB name 'AdsGetDate';
   function AdsGetDateFormat; external ACE_LIB name 'AdsGetDateFormat';
   function AdsGetDateFormat60; external ACE_LIB name 'AdsGetDateFormat60';
   function AdsGetDecimals; external ACE_LIB name 'AdsGetDecimals';
   function AdsGetDefault; external ACE_LIB name 'AdsGetDefault';
   function AdsGetDeleted; external ACE_LIB name 'AdsGetDeleted';
   function AdsGetDouble; external ACE_LIB name 'AdsGetDouble';
   function AdsGetEpoch; external ACE_LIB name 'AdsGetEpoch';
   function AdsGetErrorString; external ACE_LIB name 'AdsGetErrorString';
   function AdsGetExact22; external ACE_LIB name 'AdsGetExact22';
   function AdsGetExact; external ACE_LIB name 'AdsGetExact';
   function AdsGetField; external ACE_LIB name 'AdsGetField';
   function AdsGetFieldDecimals; external ACE_LIB name 'AdsGetFieldDecimals';
   function AdsGetFieldLength; external ACE_LIB name 'AdsGetFieldLength';
   function AdsGetFieldName; external ACE_LIB name 'AdsGetFieldName';
   function AdsGetFieldNum; external ACE_LIB name 'AdsGetFieldNum';
   function AdsGetFieldOffset; external ACE_LIB name 'AdsGetFieldOffset';
   function AdsGetFieldType; external ACE_LIB name 'AdsGetFieldType';
   function AdsGetFilter; external ACE_LIB name 'AdsGetFilter';
   function AdsGetHandleLong; external ACE_LIB name 'AdsGetHandleLong';
   function AdsGetHandleType; external ACE_LIB name 'AdsGetHandleType';
   function AdsGetIndexCondition; external ACE_LIB name 'AdsGetIndexCondition';
   function AdsGetIndexExpr; external ACE_LIB name 'AdsGetIndexExpr';
   function AdsGetIndexFilename; external ACE_LIB name 'AdsGetIndexFilename';
   function AdsGetIndexHandle; external ACE_LIB name 'AdsGetIndexHandle';
   function AdsGetIndexHandleByExpr; external ACE_LIB name 'AdsGetIndexHandleByExpr';
   function AdsGetIndexHandleByOrder; external ACE_LIB name 'AdsGetIndexHandleByOrder';
   function AdsGetIndexName; external ACE_LIB name 'AdsGetIndexName';
   function AdsGetIndexOrderByHandle; external ACE_LIB name 'AdsGetIndexOrderByHandle';
   function AdsGetFTSIndexInfo; external ACE_LIB name 'AdsGetFTSIndexInfo';
   function AdsGetJulian; external ACE_LIB name 'AdsGetJulian';
   function AdsGetKeyColumn; external ACE_LIB name 'AdsGetKeyColumn';
   function AdsGetKeyCount; external ACE_LIB name 'AdsGetKeyCount';
   function AdsGetKeyLength; external ACE_LIB name 'AdsGetKeyLength';
   function AdsGetKeyNum; external ACE_LIB name 'AdsGetKeyNum';
   function AdsGetKeyType; external ACE_LIB name 'AdsGetKeyType';
   function AdsGetLastError; external ACE_LIB name 'AdsGetLastError';
   function AdsGetLastTableUpdate; external ACE_LIB name 'AdsGetLastTableUpdate';
   function AdsGetLogical; external ACE_LIB name 'AdsGetLogical';
   function AdsGetLong; external ACE_LIB name 'AdsGetLong';
{$IFDEF ADSDELPHI5_OR_NEWER}
   function AdsGetLongLong; external ACE_LIB name 'AdsGetLongLong';
{$ENDIF}
   function AdsGetMemoBlockSize; external ACE_LIB name 'AdsGetMemoBlockSize';
   function AdsGetMemoDataType; external ACE_LIB name 'AdsGetMemoDataType';
   function AdsGetMemoLength; external ACE_LIB name 'AdsGetMemoLength';
   function AdsGetMilliseconds; external ACE_LIB name 'AdsGetMilliseconds';
{$IFDEF ADSDELPHI5_OR_NEWER}
   function AdsGetMoney; external ACE_LIB name 'AdsGetMoney';
{$ENDIF}
   function AdsGetNumFields; external ACE_LIB name 'AdsGetNumFields';
   function AdsGetNumIndexes; external ACE_LIB name 'AdsGetNumIndexes';
   function AdsGetNumFTSIndexes; external ACE_LIB name 'AdsGetNumFTSIndexes';
   function AdsGetNumLocks; external ACE_LIB name 'AdsGetNumLocks';
   function AdsGetNumOpenTables; external ACE_LIB name 'AdsGetNumOpenTables';
   function AdsGetRecord; external ACE_LIB name 'AdsGetRecord';
   function AdsGetRecordCount; external ACE_LIB name 'AdsGetRecordCount';
   function AdsGetRecordLength; external ACE_LIB name 'AdsGetRecordLength';
   function AdsGetRecordCRC; external ACE_LIB name 'AdsGetRecordCRC';
   function AdsGetRecordNum; external ACE_LIB name 'AdsGetRecordNum';
   function AdsGetRelKeyPos; external ACE_LIB name 'AdsGetRelKeyPos';
   function AdsGetScope; external ACE_LIB name 'AdsGetScope';
   function AdsGetSearchPath; external ACE_LIB name 'AdsGetSearchPath';
   function AdsGetServerName; external ACE_LIB name 'AdsGetServerName';
   function AdsGetServerTime; external ACE_LIB name 'AdsGetServerTime';
   function AdsGetShort; external ACE_LIB name 'AdsGetShort';
   function AdsGetString; external ACE_LIB name 'AdsGetString';
   function AdsGetTableAlias; external ACE_LIB name 'AdsGetTableAlias';
   function AdsGetTableCharType; external ACE_LIB name 'AdsGetTableCharType';
   function AdsGetTableConnection; external ACE_LIB name 'AdsGetTableConnection';
   function AdsGetTableFilename; external ACE_LIB name 'AdsGetTableFilename';
   function AdsGetTableHandle; external ACE_LIB name 'AdsGetTableHandle';
   function AdsGetTableLockType; external ACE_LIB name 'AdsGetTableLockType';
   function AdsGetTableMemoSize; external ACE_LIB name 'AdsGetTableMemoSize';
   function AdsGetTableOpenOptions; external ACE_LIB name 'AdsGetTableOpenOptions';
   function AdsGetTableRights; external ACE_LIB name 'AdsGetTableRights';
   function AdsGetTableType; external ACE_LIB name 'AdsGetTableType';
   function AdsGetTime; external ACE_LIB name 'AdsGetTime';
   function AdsGetVersion; external ACE_LIB name 'AdsGetVersion';
   function AdsGotoBookmark; external ACE_LIB name 'AdsGotoBookmark';
   function AdsGotoBookmark60; external ACE_LIB name 'AdsGotoBookmark60';
   function AdsGotoBottom; external ACE_LIB name 'AdsGotoBottom';
   function AdsGotoRecord; external ACE_LIB name 'AdsGotoRecord';
   function AdsGotoTop; external ACE_LIB name 'AdsGotoTop';
   function AdsImageToClipboard; external ACE_LIB name 'AdsImageToClipboard';
   function AdsInTransaction; external ACE_LIB name 'AdsInTransaction';
   function AdsInitRawKey; external ACE_LIB name 'AdsInitRawKey';
   function AdsIsEmpty; external ACE_LIB name 'AdsIsEmpty';
   function AdsIsExprValid; external ACE_LIB name 'AdsIsExprValid';
   function AdsIsFound; external ACE_LIB name 'AdsIsFound';
   function AdsIsIndexCompound; external ACE_LIB name 'AdsIsIndexCompound';
   function AdsIsIndexCustom; external ACE_LIB name 'AdsIsIndexCustom';
   function AdsIsIndexDescending; external ACE_LIB name 'AdsIsIndexDescending';
   function AdsIsIndexPrimaryKey; external ACE_LIB name 'AdsIsIndexPrimaryKey';
   function AdsIsIndexFTS; external ACE_LIB name 'AdsIsIndexFTS';
   function AdsIsIndexUnique; external ACE_LIB name 'AdsIsIndexUnique';
   function AdsIsRecordDeleted; external ACE_LIB name 'AdsIsRecordDeleted';
   function AdsIsRecordEncrypted; external ACE_LIB name 'AdsIsRecordEncrypted';
   function AdsIsRecordInAOF; external ACE_LIB name 'AdsIsRecordInAOF';
   function AdsIsRecordLocked; external ACE_LIB name 'AdsIsRecordLocked';
   function AdsIsRecordVisible; external ACE_LIB name 'AdsIsRecordVisible';
   function AdsIsServerLoaded; external ACE_LIB name 'AdsIsServerLoaded';
   function AdsIsTableEncrypted; external ACE_LIB name 'AdsIsTableEncrypted';
   function AdsIsTableLocked; external ACE_LIB name 'AdsIsTableLocked';
   function AdsLocate; external ACE_LIB name 'AdsLocate';
   function AdsLockRecord; external ACE_LIB name 'AdsLockRecord';
   function AdsLockTable; external ACE_LIB name 'AdsLockTable';
   function AdsLookupKey; external ACE_LIB name 'AdsLookupKey';
   function AdsMgConnect; external ACE_LIB name 'AdsMgConnect';
   function AdsMgDisconnect; external ACE_LIB name 'AdsMgDisconnect';
   function AdsMgDumpInternalTables; external ACE_LIB name 'AdsMgDumpInternalTables';
   function AdsMgGetActivityInfo; external ACE_LIB name 'AdsMgGetActivityInfo';
   function AdsMgGetCommStats; external ACE_LIB name 'AdsMgGetCommStats';
   function AdsMgGetConfigInfo; external ACE_LIB name 'AdsMgGetConfigInfo';
   function AdsMgGetInstallInfo; external ACE_LIB name 'AdsMgGetInstallInfo';
   function AdsMgGetLockOwner; external ACE_LIB name 'AdsMgGetLockOwner';
   function AdsMgGetLocks; external ACE_LIB name 'AdsMgGetLocks';
   function AdsMgGetOpenIndexes; external ACE_LIB name 'AdsMgGetOpenIndexes';
   function AdsMgGetOpenTables; external ACE_LIB name 'AdsMgGetOpenTables';
   function AdsMgGetServerType; external ACE_LIB name 'AdsMgGetServerType';
   function AdsMgGetUserNames; external ACE_LIB name 'AdsMgGetUserNames';
   function AdsMgGetWorkerThreadActivity; external ACE_LIB name 'AdsMgGetWorkerThreadActivity';
   function AdsMgKillUser; external ACE_LIB name 'AdsMgKillUser';
   function AdsMgResetCommStats; external ACE_LIB name 'AdsMgResetCommStats';
   function AdsOpenIndex; external ACE_LIB name 'AdsOpenIndex';
   function AdsOpenTable; external ACE_LIB name 'AdsOpenTable';
   function AdsPackTable; external ACE_LIB name 'AdsPackTable';
   function AdsPrepareSQL; external ACE_LIB name 'AdsPrepareSQL';
   function AdsRecallRecord; external ACE_LIB name 'AdsRecallRecord';
   function AdsRecallAllRecords; external ACE_LIB name 'AdsRecallAllRecords';
   function AdsRefreshAOF; external ACE_LIB name 'AdsRefreshAOF';
   function AdsRefreshRecord; external ACE_LIB name 'AdsRefreshRecord';
   function AdsRegisterCallbackFunction; external ACE_LIB name 'AdsRegisterCallbackFunction';
   function AdsRegisterProgressCallback; external ACE_LIB name 'AdsRegisterProgressCallback';
   function AdsRegisterSQLAbortFunc; external ACE_LIB name 'AdsRegisterSQLAbortFunc';
   function AdsReindex; external ACE_LIB name 'AdsReindex';
   function AdsReindex61; external ACE_LIB name 'AdsReindex61';
   function AdsReindexFTS; external ACE_LIB name 'AdsReindexFTS';
   function AdsResetConnection; external ACE_LIB name 'AdsResetConnection';
   function AdsRollbackTransaction; external ACE_LIB name 'AdsRollbackTransaction';
   function AdsSeek; external ACE_LIB name 'AdsSeek';
   function AdsSeekLast; external ACE_LIB name 'AdsSeekLast';
   function AdsSetAOF; external ACE_LIB name 'AdsSetAOF';
   function AdsSetBinary; external ACE_LIB name 'AdsSetBinary';
   function AdsSetCollationLang; external ACE_LIB name 'AdsSetCollationLang';
   function AdsSetDate; external ACE_LIB name 'AdsSetDate';
   function AdsSetDateFormat; external ACE_LIB name 'AdsSetDateFormat';
   function AdsSetDateFormat60; external ACE_LIB name 'AdsSetDateFormat60';
   function AdsSetDecimals; external ACE_LIB name 'AdsSetDecimals';
   function AdsSetDefault; external ACE_LIB name 'AdsSetDefault';
   function AdsSetDouble; external ACE_LIB name 'AdsSetDouble';
   function AdsSetEmpty; external ACE_LIB name 'AdsSetEmpty';
   function AdsSetEpoch; external ACE_LIB name 'AdsSetEpoch';
   function AdsSetExact22; external ACE_LIB name 'AdsSetExact22';
   function AdsSetExact; external ACE_LIB name 'AdsSetExact';
   function AdsSetField; external ACE_LIB name 'AdsSetField';
   function AdsSetFilter; external ACE_LIB name 'AdsSetFilter';
   function AdsSetHandleLong; external ACE_LIB name 'AdsSetHandleLong';
   function AdsSetJulian; external ACE_LIB name 'AdsSetJulian';
   function AdsSetLogical; external ACE_LIB name 'AdsSetLogical';
   function AdsSetLong; external ACE_LIB name 'AdsSetLong';
{$IFDEF ADSDELPHI5_OR_NEWER}
   function AdsSetLongLong; external ACE_LIB name 'AdsSetLongLong';
{$ENDIF}
   function AdsSetMilliseconds; external ACE_LIB name 'AdsSetMilliseconds';
{$IFDEF ADSDELPHI5_OR_NEWER}
   function AdsSetMoney; external ACE_LIB name 'AdsSetMoney';
{$ENDIF}
   function AdsSetRecord; external ACE_LIB name 'AdsSetRecord';
   function AdsSetRelKeyPos; external ACE_LIB name 'AdsSetRelKeyPos';
   function AdsSetRelation; external ACE_LIB name 'AdsSetRelation';
   function AdsSetScope; external ACE_LIB name 'AdsSetScope';
   function AdsSetScopedRelation; external ACE_LIB name 'AdsSetScopedRelation';
   function AdsSetSearchPath; external ACE_LIB name 'AdsSetSearchPath';
   function AdsSetServerType; external ACE_LIB name 'AdsSetServerType';
   function AdsSetShort; external ACE_LIB name 'AdsSetShort';
   function AdsSetString; external ACE_LIB name 'AdsSetString';
   function AdsSetTime; external ACE_LIB name 'AdsSetTime';
   function AdsSetTimeStamp; external ACE_LIB name 'AdsSetTimeStamp';
   function AdsShowDeleted; external ACE_LIB name 'AdsShowDeleted';
   function AdsShowError; external ACE_LIB name 'AdsShowError';
   function AdsSkip; external ACE_LIB name 'AdsSkip';
   function AdsStmtConstrainUpdates; external ACE_LIB name 'AdsStmtConstrainUpdates';
   function AdsStmtSetTableCharType; external ACE_LIB name 'AdsStmtSetTableCharType';
   function AdsStmtSetTableLockType; external ACE_LIB name 'AdsStmtSetTableLockType';
   function AdsStmtSetTableReadOnly; external ACE_LIB name 'AdsStmtSetTableReadOnly';
   function AdsStmtSetTableRights; external ACE_LIB name 'AdsStmtSetTableRights';
   function AdsStmtSetTableType; external ACE_LIB name 'AdsStmtSetTableType';
   function AdsStmtEnableEncryption; external ACE_LIB name 'AdsStmtEnableEncryption';
   function AdsStmtDisableEncryption; external ACE_LIB name 'AdsStmtDisableEncryption';
   function AdsStmtSetTablePassword; external ACE_LIB name 'AdsStmtSetTablePassword';
   function AdsStmtClearTablePasswords; external ACE_LIB name 'AdsStmtClearTablePasswords';
   function AdsStmtReadAllColumns; external ACE_LIB name 'AdsStmtReadAllColumns';
   function AdsThreadExit; external ACE_LIB name 'AdsThreadExit';
   function AdsUnlockRecord; external ACE_LIB name 'AdsUnlockRecord';
   function AdsUnlockTable; external ACE_LIB name 'AdsUnlockTable';
   function AdsIsEncryptionEnabled; external ACE_LIB name 'AdsIsEncryptionEnabled';
   function AdsWriteAllRecords; external ACE_LIB name 'AdsWriteAllRecords';
   function AdsWriteRecord; external ACE_LIB name 'AdsWriteRecord';
   function AdsZapTable; external ACE_LIB name 'AdsZapTable';
   function AdsIsIndexUserDefined; external ACE_LIB name 'AdsIsIndexUserDefined';
   function AdsRegisterUDF; external ACE_LIB name 'AdsRegisterUDF';
   function AdsDisableLocalConnections; external ACE_LIB name 'AdsDisableLocalConnections';
   function AdsGetLastAutoinc; external ACE_LIB name 'AdsGetLastAutoinc';
   function AdsFindClose; external ACE_LIB name 'AdsFindClose';
   function AdsFindFirstTable; external ACE_LIB name 'AdsFindFirstTable';
   function AdsFindNextTable; external ACE_LIB name 'AdsFindNextTable';
   function AdsFindFirstTable62; external ACE_LIB name 'AdsFindFirstTable62';
   function AdsFindNextTable62; external ACE_LIB name 'AdsFindNextTable62';
   function AdsGetNumParams; external ACE_LIB name 'AdsGetNumParams';
   function AdsRestructureTable; external ACE_LIB name 'AdsRestructureTable';
   function AdsGetSQLStatementHandle; external ACE_LIB name 'AdsGetSQLStatementHandle';
   function AdsGetSQLStatement; external ACE_LIB name 'AdsGetSQLStatement';
   function AdsFlushFileBuffers; external ACE_LIB name 'AdsFlushFileBuffers';
   function AdsDDDeployDatabase; external ACE_LIB name 'AdsDDDeployDatabase';
   function AdsDDGetPermissions; external ACE_LIB name 'AdsDDGetPermissions';
   function AdsDDGrantPermission; external ACE_LIB name 'AdsDDGrantPermission';
   function AdsDDRevokePermission; external ACE_LIB name 'AdsDDRevokePermission';
   function AdsDDCreateRefIntegrity62; external ACE_LIB name 'AdsDDCreateRefIntegrity62';
   function AdsDDGetLinkProperty; external ACE_LIB name 'AdsDDGetLinkProperty';
   function AdsDDCreateLink; external ACE_LIB name 'AdsDDCreateLink';
   function AdsDDModifyLink; external ACE_LIB name 'AdsDDModifyLink';
   function AdsDDDropLink; external ACE_LIB name 'AdsDDDropLink';
   function AdsGetActiveLinkInfo; external ACE_LIB name 'AdsGetActiveLinkInfo';
   function AdsGetNumActiveLinks; external ACE_LIB name 'AdsGetNumActiveLinks';
   function AdsVerifySQL; external ACE_LIB name 'AdsVerifySQL';
   function AdsEnableUniqueEnforcement; external ACE_LIB name 'AdsEnableUniqueEnforcement';
   function AdsDisableUniqueEnforcement; external ACE_LIB name 'AdsDisableUniqueEnforcement';
   function AdsEnableRI; external ACE_LIB name 'AdsEnableRI';
   function AdsDisableRI; external ACE_LIB name 'AdsDisableRI';
   function AdsEnableAutoIncEnforcement; external ACE_LIB name 'AdsEnableAutoIncEnforcement';
   function AdsDisableAutoIncEnforcement; external ACE_LIB name 'AdsDisableAutoIncEnforcement';
   function AdsDDCreateTrigger; external ACE_LIB name 'AdsDDCreateTrigger';
   function AdsDDRemoveTrigger; external ACE_LIB name 'AdsDDRemoveTrigger';
   function AdsDDGetTriggerProperty; external ACE_LIB name 'AdsDDGetTriggerProperty';
   function AdsDDSetTriggerProperty; external ACE_LIB name 'AdsDDSetTriggerProperty';
   function AdsIsConnectionAlive; external ACE_LIB name 'AdsIsConnectionAlive';
   function AdsDDMoveObjectFile; external ACE_LIB name 'AdsDDMoveObjectFile';
   function AdsDDCreatePublication; external ACE_LIB name 'AdsDDCreatePublication';
   function AdsDDSetPublicationProperty; external ACE_LIB name 'AdsDDSetPublicationProperty';
   function AdsDDGetPublicationProperty; external ACE_LIB name 'AdsDDGetPublicationProperty';
   function AdsDDDeletePublication; external ACE_LIB name 'AdsDDDeletePublication';
   function AdsDDCreateArticle; external ACE_LIB name 'AdsDDCreateArticle';
   function AdsDDSetArticleProperty; external ACE_LIB name 'AdsDDSetArticleProperty';
   function AdsDDGetArticleProperty; external ACE_LIB name 'AdsDDGetArticleProperty';
   function AdsDDDeleteArticle; external ACE_LIB name 'AdsDDDeleteArticle';
   function AdsDDCreateSubscription; external ACE_LIB name 'AdsDDCreateSubscription';
   function AdsDDSetSubscriptionProperty; external ACE_LIB name 'AdsDDSetSubscriptionProperty';
   function AdsDDGetSubscriptionProperty; external ACE_LIB name 'AdsDDGetSubscriptionProperty';
   function AdsDDDeleteSubscription; external ACE_LIB name 'AdsDDDeleteSubscription';
   function AdsRollbackTransaction80; external ACE_LIB name 'AdsRollbackTransaction80';
   function AdsCreateSavepoint; external ACE_LIB name 'AdsCreateSavepoint';
   function AdsDDDisableTriggers; external ACE_LIB name 'AdsDDDisableTriggers';
   function AdsDDEnableTriggers; external ACE_LIB name 'AdsDDEnableTriggers';
   function AdsDDFreeTable; external ACE_LIB name 'AdsDDFreeTable';
   function AdsDDSetIndexProperty; external ACE_LIB name 'AdsDDSetIndexProperty';
end.
