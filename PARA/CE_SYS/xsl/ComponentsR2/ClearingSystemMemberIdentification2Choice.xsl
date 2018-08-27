<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="ClearingSystemMemberIdentification2Choice">
		<xsl:param name="ClearingSystemMemberIdentification2Choice"/>
		<xsl:param name="ClearingSystemMemberIdentification2Choice_parent"/>
		<xsl:variable name="ClearingSystemMemberIdentification2Choice_name" select="name($ClearingSystemMemberIdentification2Choice)"/>
		<xsl:variable name="ClearingSystemMemberIdentification2Choice_pname" select="$ClearingSystemMemberIdentification2Choice_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ClearingSystemMemberIdentification2Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="USCHUDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'USCHU'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NZNCCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'NZNCC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IENSCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'IENSC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="GBSCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GBSC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="USCHDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'USCH'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CHBCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CHBC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="USFWDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'USFW'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PTNCCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PTNCC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RUCBDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RUCB'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ITNCCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ITNCC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ATBLZDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ATBLZ'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CACPADesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CACPA'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CHSICDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CHSIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DEBLZDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DEBLZ'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ESNCCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ESNCC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ZANCCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ZANCC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="HKNCCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'HKNCC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AUBSBxDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AUBSBx'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AUBSBsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AUBSBs'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="INIFSCDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'INIFSC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="GRHEBICDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GRHEBIC'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PLKNRDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PLKNR'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrClrCdIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OthrClrCdId'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$USCHUDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_USCHU</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_USCHU</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/USCHU"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NZNCCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_NZNCC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_NZNCC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/NZNCC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$IENSCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_IENSC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_IENSC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/IENSC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$GBSCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_GBSC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_GBSC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/GBSC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$USCHDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_USCH</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_USCH</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/USCH"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CHBCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_CHBC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_CHBC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/CHBC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$USFWDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_USFW</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_USFW</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/USFW"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PTNCCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_PTNCC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_PTNCC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/PTNCC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RUCBDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_RUCB</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_RUCB</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/RUCB"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ITNCCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ITNCC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ITNCC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/ITNCC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ATBLZDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ATBLZ</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ATBLZ</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/ATBLZ"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CACPADesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_CACPA</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_CACPA</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/CACPA"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CHSICDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_CHSIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_CHSIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/CHSIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DEBLZDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_DEBLZ</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_DEBLZ</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/DEBLZ"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ESNCCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ESNCC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ESNCC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/ESNCC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ZANCCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ZANCC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_ZANCC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/ZANCC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$HKNCCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_HKNCC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_HKNCC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/HKNCC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AUBSBxDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_AUBSBx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_AUBSBx</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/AUBSBx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AUBSBsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_AUBSBs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_AUBSBs</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/AUBSBs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$INIFSCDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_INIFSC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_INIFSC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/INIFSC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$GRHEBICDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_GRHEBIC</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_GRHEBIC</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/GRHEBIC"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PLKNRDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_PLKNR</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_PLKNR</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/PLKNR"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OthrClrCdIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_OthrClrCdId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice_pname"/>_<xsl:value-of select="$ClearingSystemMemberIdentification2Choice_name"/>_OthrClrCdId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ClearingSystemMemberIdentification2Choice/OthrClrCdId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
