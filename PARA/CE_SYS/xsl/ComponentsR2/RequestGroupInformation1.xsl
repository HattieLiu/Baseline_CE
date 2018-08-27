<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PartyIdentificationAndAccount6.xsl"/>
	<xsl:include href="FinancialInstitutionIdentification6.xsl"/>
	<xsl:include href="AgreementClauses1.xsl"/>
	<xsl:include href="AdditionalInformation1.xsl"/>
	<xsl:template name="RequestGroupInformation1">
		<xsl:param name="RequestGroupInformation1"/>
		<xsl:param name="RequestGroupInformation1_parent"/>
		<xsl:variable name="RequestGroupInformation1_name" select="name($RequestGroupInformation1)"/>
		<xsl:variable name="RequestGroupInformation1_pname" select="$RequestGroupInformation1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$RequestGroupInformation1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="GrpIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GrpId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CreDtTmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CreDtTm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AuthstnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Authstn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NbOfInvcReqsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'NbOfInvcReqs'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TtlBlkInvcAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TtlBlkInvcAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CcyDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Ccy'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FincgAgrmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FincgAgrmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$GrpIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_GrpId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_GrpId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/GrpId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CreDtTmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_CreDtTm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_CreDtTm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/CreDtTm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NbOfInvcReqsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_NbOfInvcReqs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_NbOfInvcReqs</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/NbOfInvcReqs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TtlBlkInvcAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_TtlBlkInvcAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_TtlBlkInvcAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/TtlBlkInvcAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_TtlBlkInvcAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_TtlBlkInvcAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/TtlBlkInvcAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CcyDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_Ccy</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_Ccy</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/Ccy"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$FincgAgrmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_FincgAgrmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_FincgAgrmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequestGroupInformation1/FincgAgrmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:for-each select="$RequestGroupInformation1/Authstn">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$AuthstnDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:number value="position"/>_<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_Authstn</xsl:attribute>
											<xsl:attribute name="id"><xsl:number value="position"/>_<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>_Authstn</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:variable name="PartyIdentificationAndAccount6" select="$RequestGroupInformation1/FincgRqstr"/>
						<xsl:call-template name="PartyIdentificationAndAccount6">
							<xsl:with-param name="PartyIdentificationAndAccount6" select="$PartyIdentificationAndAccount6"/>
							<xsl:with-param name="PartyIdentificationAndAccount6_parent">
								<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancialInstitutionIdentification6" select="$RequestGroupInformation1/IntrmyAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification6">
							<xsl:with-param name="FinancialInstitutionIdentification6" select="$FinancialInstitutionIdentification6"/>
							<xsl:with-param name="FinancialInstitutionIdentification6_parent">
								<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancialInstitutionIdentification6_double" select="$RequestGroupInformation1/FrstAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification6">
							<xsl:with-param name="FinancialInstitutionIdentification6" select="$FinancialInstitutionIdentification6_double"/>
							<xsl:with-param name="FinancialInstitutionIdentification6_parent">
								<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$RequestGroupInformation1/AgrmtClauses">
							<xsl:variable name="AgreementClauses1" select="."/>
							<xsl:call-template name="AgreementClauses1">
								<xsl:with-param name="AgreementClauses1" select="$AgreementClauses1"/>
								<xsl:with-param name="AgreementClauses1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$RequestGroupInformation1/AddtlInf">
							<xsl:variable name="AdditionalInformation1" select="."/>
							<xsl:call-template name="AdditionalInformation1">
								<xsl:with-param name="AdditionalInformation1" select="$AdditionalInformation1"/>
								<xsl:with-param name="AdditionalInformation1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$RequestGroupInformation1_pname"/>_<xsl:value-of select="$RequestGroupInformation1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
