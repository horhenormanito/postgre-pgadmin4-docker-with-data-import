/* CREATE TABLE 2020/09/09 */

CREATE	TABLE	APEX_LICENSE
(
	SERIALNUMBER	VARCHAR(8)	NOT NULL	UNIQUE,
	EXPIRATIONDATE	VARCHAR(10)	NOT NULL,
	LICENSEDIVISION	VARCHAR(30)	NOT NULL,
	LICENSEEDITION	VARCHAR(30)	NOT NULL,
	LICENSEVERSION	VARCHAR(10)	NOT NULL,
	LICENSECOUNT_NODE_ACTUAL	SMALLINT	NOT NULL,
	LICENSECOUNT_NODE_MAX	VARCHAR(6)	NOT NULL,
	LICENSECOUNT_COMMPORT_ACTUAL	VARCHAR(6)	NOT NULL,
	LICENSECOUNT_COMMPORT_MAX	VARCHAR(6)	NOT NULL,
	LICENSECOUNT_TENANT_ACTUAL	VARCHAR(6)	NOT NULL,
	LICENSECOUNT_TENANT_MAX	VARCHAR(6)	NOT NULL,
	LICENSECOUNT_DETRADEUSER_ACTUAL	VARCHAR(6)	NOT NULL,
	LICENSECOUNT_DETRADEUSER_MAX	VARCHAR(6)	NOT NULL,
	LICENSEEXTENSION_TENANT	BOOLEAN,
	LICENSEEXTENSION_APEX_CLUSTER	BOOLEAN,
	LICENSEEXTENSION_FILE_ENCRYPTION	BOOLEAN,
	LICENSEEXTENSION_TRANSLATOR	BOOLEAN,
	LICENSEEXTENSION_EDI_PACK	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_FTP	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_ZENGIN_BSC	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_ZENGIN_TCP	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_JCA	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_JX	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_AS2	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_EBXML_MS_2	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_EBXML_MS_3	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_ROSETTA_NET_1_1	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_CHEM_E_STANDARD	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_ROSETTA_NET_2_0	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_SFTP	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_BACREX_CLIENT	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_MAIL_EDI	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_DETRADE	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_WEBAGENT	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_HTTP	BOOLEAN,
	LICENSEEXTENSION_PROTOCOL_OPTIONAL	BOOLEAN,
	LICENSEEXTENSION_ADAPTER_SAP_EDI	BOOLEAN,
	LICENSEEXTENSION_ADAPTER_MQ	BOOLEAN,
	LICENSEEXTENSION_ZEDI_PACK	BOOLEAN,
	LICENSECHECKTIME_START	VARCHAR(19)	NOT NULL,
	LICENSECHECKTIME_END	VARCHAR(19)	NOT NULL,
	LICENSEVALIDITYSTATE	VARCHAR(10)	NOT NULL,
	LASTUPDATEOPERATORID	VARCHAR(128)	NOT NULL,
	LASTUPDATE	VARCHAR(23)	NOT NULL,
	PRIMARY KEY (SERIALNUMBER)
)	WITHOUT OIDS;