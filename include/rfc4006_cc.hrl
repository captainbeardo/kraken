%% -------------------------------------------------------------------
%% This is a generated file.
%% -------------------------------------------------------------------

%%
%% Copyright (c) Ericsson AB. All rights reserved.
%%
%% The information in this document is the property of Ericsson.
%%
%% Except as specifically authorized in writing by Ericsson, the
%% receiver of this document shall keep the information contained
%% herein confidential and shall protect the same in whole or in
%% part from disclosure and dissemination to third parties.
%%
%% Disclosure and disseminations to the receivers employees shall
%% only be made on a strict need to know basis.
%%

-hrl_name('rfc4006_cc.hrl').


%%% -------------------------------------------------------
%%% Message records:
%%% -------------------------------------------------------

-record(hello_CCR,
	{'Session-Id', 'Origin-Host', 'Origin-Realm',
	 'Destination-Realm', 'Auth-Application-Id',
	 'Service-Context-Id', 'CC-Request-Type',
	 'CC-Request-Number', 'Destination-Host' = [],
	 'User-Name' = [], 'CC-Sub-Session-Id' = [],
	 'Acct-Multi-Session-Id' = [], 'Origin-State-Id' = [],
	 'Event-Timestamp' = [], 'Subscription-Id' = [],
	 'Service-Identifier' = [], 'Termination-Cause' = [],
	 'Requested-Service-Unit' = [], 'Requested-Action' = [],
	 'Used-Service-Unit' = [],
	 'Multiple-Services-Indicator' = [],
	 'Multiple-Services-Credit-Control' = [],
	 'Service-Parameter-Info' = [], 'CC-Correlation-Id' = [],
	 'User-Equipment-Info' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'AVP' = []}).

-record(hello_CCA,
	{'Session-Id', 'Result-Code', 'Origin-Host',
	 'Origin-Realm', 'Auth-Application-Id',
	 'CC-Request-Type', 'CC-Request-Number',
	 'User-Name' = [], 'CC-Session-Failover' = [],
	 'CC-Sub-Session-Id' = [], 'Acct-Multi-Session-Id' = [],
	 'Origin-State-Id' = [], 'Event-Timestamp' = [],
	 'Granted-Service-Unit' = [],
	 'Multiple-Services-Credit-Control' = [],
	 'Cost-Information' = [], 'Final-Unit-Indication' = [],
	 'Check-Balance-Result' = [],
	 'Credit-Control-Failure-Handling' = [],
	 'Direct-Debiting-Failure-Handling' = [],
	 'Validity-Time' = [], 'Redirect-Host' = [],
	 'Redirect-Host-Usage' = [],
	 'Redirect-Max-Cache-Time' = [], 'Proxy-Info' = [],
	 'Route-Record' = [], 'Failed-AVP' = [], 'AVP' = []}).


%%% -------------------------------------------------------
%%% Grouped AVP records:
%%% -------------------------------------------------------

-record('hello_Cost-Information',
	{'Unit-Value', 'Currency-Code', 'Cost-Unit' = []}).

-record('hello_Unit-Value',
	{'Value-Digits', 'Exponent' = []}).

-record('hello_Multiple-Services-Credit-Control',
	{'Granted-Service-Unit' = [],
	 'Requested-Service-Unit' = [], 'Used-Service-Unit' = [],
	 'Tariff-Change-Usage' = [], 'Service-Identifier' = [],
	 'Rating-Group' = [], 'G-S-U-Pool-Reference' = [],
	 'Validity-Time' = [], 'Result-Code' = [],
	 'Final-Unit-Indication' = [], 'AVP' = []}).

-record('hello_Granted-Service-Unit',
	{'Tariff-Time-Change' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('hello_Requested-Service-Unit',
	{'CC-Time' = [], 'CC-Money' = [],
	 'CC-Total-Octets' = [], 'CC-Input-Octets' = [],
	 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('hello_Used-Service-Unit',
	{'Tariff-Change-Usage' = [], 'CC-Time' = [],
	 'CC-Money' = [], 'CC-Total-Octets' = [],
	 'CC-Input-Octets' = [], 'CC-Output-Octets' = [],
	 'CC-Service-Specific-Units' = [], 'AVP' = []}).

-record('hello_CC-Money',
	{'Unit-Value', 'Currency-Code' = []}).

-record('hello_G-S-U-Pool-Reference',
	{'G-S-U-Pool-Identifier', 'CC-Unit-Type',
	 'Unit-Value'}).

-record('hello_Final-Unit-Indication',
	{'Final-Unit-Action', 'Restriction-Filter-Rule' = [],
	 'Filter-Id' = [], 'Redirect-Server' = []}).

-record('hello_Redirect-Server',
	{'Redirect-Address-Type', 'Redirect-Server-Address'}).

-record('hello_Service-Parameter-Info',
	{'Service-Parameter-Type', 'Service-Parameter-Value'}).

-record('hello_Subscription-Id',
	{'Subscription-Id-Type', 'Subscription-Id-Data'}).

-record('hello_User-Equipment-Info',
	{'User-Equipment-Info-Type',
	 'User-Equipment-Info-Value'}).


%%% -------------------------------------------------------
%%% Grouped AVP records from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-record('hello_Proxy-Info',
	{'Proxy-Host', 'Proxy-State', 'AVP' = []}).

-record('hello_Failed-AVP', {'AVP' = []}).

-record('hello_Experimental-Result',
	{'Vendor-Id', 'Experimental-Result-Code'}).

-record('hello_Vendor-Specific-Application-Id',
	{'Vendor-Id' = [], 'Auth-Application-Id' = [],
	 'Acct-Application-Id' = []}).

-record('hello_E2E-Sequence', {'AVP' = []}).


%%% -------------------------------------------------------
%%% ENUM Macros:
%%% -------------------------------------------------------

-define('HELLO_CC-REQUEST-TYPE_INITIAL_REQUEST', 1).
-define('HELLO_CC-REQUEST-TYPE_UPDATE_REQUEST', 2).
-define('HELLO_CC-REQUEST-TYPE_TERMINATION_REQUEST', 3).
-define('HELLO_CC-REQUEST-TYPE_EVENT_REQUEST', 4).
-define('HELLO_CC-SESSION-FAILOVER_NOT_SUPPORTED', 0).
-define('HELLO_CC-SESSION-FAILOVER_SUPPORTED', 1).
-define('HELLO_CHECK-BALANCE-RESULT_ENOUGH_CREDIT', 0).
-define('HELLO_CHECK-BALANCE-RESULT_NO_CREDIT', 1).
-define('HELLO_CREDIT-CONTROL_AUTHORIZATION', 0).
-define('HELLO_CREDIT-CONTROL_RE_AUTHORIZATION', 1).
-define('HELLO_CREDIT-CONTROL-FAILURE-HANDLING_TERMINATE', 0).
-define('HELLO_CREDIT-CONTROL-FAILURE-HANDLING_CONTINUE', 1).
-define('HELLO_CREDIT-CONTROL-FAILURE-HANDLING_RETRY_AND_TERMINATE', 2).
-define('HELLO_DIRECT-DEBITING-FAILURE-HANDLING_TERMINATE_OR_BUFFER', 0).
-define('HELLO_DIRECT-DEBITING-FAILURE-HANDLING_CONTINUE', 1).
-define('HELLO_TARIFF-CHANGE-USAGE_UNIT_BEFORE_TARIFF_CHANGE', 0).
-define('HELLO_TARIFF-CHANGE-USAGE_UNIT_AFTER_TARIFF_CHANGE', 1).
-define('HELLO_TARIFF-CHANGE-USAGE_UNIT_INDETERMINATE', 2).
-define('HELLO_CC-UNIT-TYPE_TIME', 0).
-define('HELLO_CC-UNIT-TYPE_MONEY', 1).
-define('HELLO_CC-UNIT-TYPE_TOTAL-OCTETS', 2).
-define('HELLO_CC-UNIT-TYPE_INPUT-OCTETS', 3).
-define('HELLO_CC-UNIT-TYPE_OUTPUT-OCTETS', 4).
-define('HELLO_CC-UNIT-TYPE_SERVICE-SPECIFIC-UNITS', 5).
-define('HELLO_FINAL-UNIT-ACTION_TERMINATE', 0).
-define('HELLO_FINAL-UNIT-ACTION_REDIRECT', 1).
-define('HELLO_FINAL-UNIT-ACTION_RESTRICT_ACCESS', 2).
-define('HELLO_REDIRECT-ADDRESS-TYPE_IPV4', 0).
-define('HELLO_REDIRECT-ADDRESS-TYPE_IPV6', 1).
-define('HELLO_REDIRECT-ADDRESS-TYPE_URL', 2).
-define('HELLO_REDIRECT-ADDRESS-TYPE_SIP_URI', 3).
-define('HELLO_MULTIPLE-SERVICES-INDICATOR_NOT_SUPPORTED', 0).
-define('HELLO_MULTIPLE-SERVICES-INDICATOR_SUPPORTED', 1).
-define('HELLO_REQUESTED-ACTION_DIRECT_DEBITING', 0).
-define('HELLO_REQUESTED-ACTION_REFUND_ACCOUNT', 1).
-define('HELLO_REQUESTED-ACTION_CHECK_BALANCE', 2).
-define('HELLO_REQUESTED-ACTION_PRICE_ENQUIRY', 3).
-define('HELLO_SUBSCRIPTION-ID-TYPE_END_USER_E164', 0).
-define('HELLO_SUBSCRIPTION-ID-TYPE_END_USER_IMSI', 1).
-define('HELLO_SUBSCRIPTION-ID-TYPE_END_USER_SIP_URI', 2).
-define('HELLO_SUBSCRIPTION-ID-TYPE_END_USER_NAI', 3).
-define('HELLO_SUBSCRIPTION-ID-TYPE_END_USER_PRIVATE', 4).
-define('HELLO_USER-EQUIPMENT-INFO-TYPE_IMEISV', 0).
-define('HELLO_USER-EQUIPMENT-INFO-TYPE_MAC', 1).
-define('HELLO_USER-EQUIPMENT-INFO-TYPE_EUI64', 2).
-define('HELLO_USER-EQUIPMENT-INFO-TYPE_MODIFIED_EUI64', 3).



%%% -------------------------------------------------------
%%% DEFINE Macros:
%%% -------------------------------------------------------

-define('HELLO_RESULT-CODE_END_USER_SERVICE_DENIED', 4010).
-define('HELLO_RESULT-CODE_CREDIT_CONTROL_NOT_APPLICABLE', 4011).
-define('HELLO_RESULT-CODE_CREDIT_LIMIT_REACHED', 4012).
-define('HELLO_RESULT-CODE_USER_UNKNOWN', 5030).
-define('HELLO_RESULT-CODE_RATING_FAILED', 5031).



%%% -------------------------------------------------------
%%% ENUM Macros from diameter_gen_base_rfc3588:
%%% -------------------------------------------------------

-ifndef('HELLO_DISCONNECT-CAUSE_REBOOTING').
-define('HELLO_DISCONNECT-CAUSE_REBOOTING', 0).
-endif.
-ifndef('HELLO_DISCONNECT-CAUSE_BUSY').
-define('HELLO_DISCONNECT-CAUSE_BUSY', 1).
-endif.
-ifndef('HELLO_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU').
-define('HELLO_DISCONNECT-CAUSE_DO_NOT_WANT_TO_TALK_TO_YOU', 2).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_DONT_CACHE').
-define('HELLO_REDIRECT-HOST-USAGE_DONT_CACHE', 0).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_ALL_SESSION').
-define('HELLO_REDIRECT-HOST-USAGE_ALL_SESSION', 1).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_ALL_REALM').
-define('HELLO_REDIRECT-HOST-USAGE_ALL_REALM', 2).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION').
-define('HELLO_REDIRECT-HOST-USAGE_REALM_AND_APPLICATION', 3).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_ALL_APPLICATION').
-define('HELLO_REDIRECT-HOST-USAGE_ALL_APPLICATION', 4).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_ALL_HOST').
-define('HELLO_REDIRECT-HOST-USAGE_ALL_HOST', 5).
-endif.
-ifndef('HELLO_REDIRECT-HOST-USAGE_ALL_USER').
-define('HELLO_REDIRECT-HOST-USAGE_ALL_USER', 6).
-endif.
-ifndef('HELLO_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY').
-define('HELLO_AUTH-REQUEST-TYPE_AUTHENTICATE_ONLY', 1).
-endif.
-ifndef('HELLO_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('HELLO_AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 2).
-endif.
-ifndef('HELLO_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('HELLO_AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 3).
-endif.
-ifndef('HELLO_AUTH-SESSION-STATE_STATE_MAINTAINED').
-define('HELLO_AUTH-SESSION-STATE_STATE_MAINTAINED', 0).
-endif.
-ifndef('HELLO_AUTH-SESSION-STATE_NO_STATE_MAINTAINED').
-define('HELLO_AUTH-SESSION-STATE_NO_STATE_MAINTAINED', 1).
-endif.
-ifndef('HELLO_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY').
-define('HELLO_RE-AUTH-REQUEST-TYPE_AUTHORIZE_ONLY', 0).
-endif.
-ifndef('HELLO_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE').
-define('HELLO_RE-AUTH-REQUEST-TYPE_AUTHORIZE_AUTHENTICATE', 1).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_LOGOUT').
-define('HELLO_TERMINATION-CAUSE_LOGOUT', 1).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED').
-define('HELLO_TERMINATION-CAUSE_SERVICE_NOT_PROVIDED', 2).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_BAD_ANSWER').
-define('HELLO_TERMINATION-CAUSE_BAD_ANSWER', 3).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_ADMINISTRATIVE').
-define('HELLO_TERMINATION-CAUSE_ADMINISTRATIVE', 4).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_LINK_BROKEN').
-define('HELLO_TERMINATION-CAUSE_LINK_BROKEN', 5).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_AUTH_EXPIRED').
-define('HELLO_TERMINATION-CAUSE_AUTH_EXPIRED', 6).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_USER_MOVED').
-define('HELLO_TERMINATION-CAUSE_USER_MOVED', 7).
-endif.
-ifndef('HELLO_TERMINATION-CAUSE_SESSION_TIMEOUT').
-define('HELLO_TERMINATION-CAUSE_SESSION_TIMEOUT', 8).
-endif.
-ifndef('HELLO_SESSION-SERVER-FAILOVER_REFUSE_SERVICE').
-define('HELLO_SESSION-SERVER-FAILOVER_REFUSE_SERVICE', 0).
-endif.
-ifndef('HELLO_SESSION-SERVER-FAILOVER_TRY_AGAIN').
-define('HELLO_SESSION-SERVER-FAILOVER_TRY_AGAIN', 1).
-endif.
-ifndef('HELLO_SESSION-SERVER-FAILOVER_ALLOW_SERVICE').
-define('HELLO_SESSION-SERVER-FAILOVER_ALLOW_SERVICE', 2).
-endif.
-ifndef('HELLO_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE').
-define('HELLO_SESSION-SERVER-FAILOVER_TRY_AGAIN_ALLOW_SERVICE', 3).
-endif.
-ifndef('HELLO_ACCOUNTING-RECORD-TYPE_EVENT_RECORD').
-define('HELLO_ACCOUNTING-RECORD-TYPE_EVENT_RECORD', 1).
-endif.
-ifndef('HELLO_ACCOUNTING-RECORD-TYPE_START_RECORD').
-define('HELLO_ACCOUNTING-RECORD-TYPE_START_RECORD', 2).
-endif.
-ifndef('HELLO_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD').
-define('HELLO_ACCOUNTING-RECORD-TYPE_INTERIM_RECORD', 3).
-endif.
-ifndef('HELLO_ACCOUNTING-RECORD-TYPE_STOP_RECORD').
-define('HELLO_ACCOUNTING-RECORD-TYPE_STOP_RECORD', 4).
-endif.
-ifndef('HELLO_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT').
-define('HELLO_ACCOUNTING-REALTIME-REQUIRED_DELIVER_AND_GRANT', 1).
-endif.
-ifndef('HELLO_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE').
-define('HELLO_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_STORE', 2).
-endif.
-ifndef('HELLO_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE').
-define('HELLO_ACCOUNTING-REALTIME-REQUIRED_GRANT_AND_LOSE', 3).
-endif.

