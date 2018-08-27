<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PartyIdentificationAndAccount6.xsl"/>
	<xsl:include href="FinancialInstitutionIdentification6.xsl"/>
	<xsl:template name="CancellationRequestInformation1">
		<xsl:param name="CancellationRequestInformation1"/>
		<xsl:param name="CancellationRequestInformation1_parent"/>
		<xsl:variable name="CancellationRequestInformation1_name" select="name($CancellationRequestInformation1)"/>
		<xsl:variable name="CancellationRequestInformation1_pname" select="$CancellationRequestInformation1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$CancellationRequestInformation1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrgnlGrpIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrgnlGrpId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrgnlCreDtTmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OrgnlCreDtTm'"/>
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
		<xsl:variable name="CxlRsnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CxlRsn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OrgnlGrpIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_OrgnlGrpId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_OrgnlGrpId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CancellationRequestInformation1/OrgnlGrpId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OrgnlCreDtTmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_OrgnlCreDtTm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_OrgnlCreDtTm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CancellationRequestInformation1/OrgnlCreDtTm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NbOfInvcReqsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_NbOfInvcReqs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_NbOfInvcReqs</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CancellationRequestInformation1/NbOfInvcReqs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TtlBlkInvcAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_TtlBlkInvcAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_TtlBlkInvcAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CancellationRequestInformation1/TtlBlkInvcAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_TtlBlkInvcAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_TtlBlkInvcAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CancellationRequestInformation1/TtlBlkInvcAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CxlRsnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_CxlRsn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>_CxlRsn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CancellationRequestInformation1/CxlRsn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PartyIdentificationAndAccount6" select="$CancellationRequestInformation1/FincgRqstr"/>
						<xsl:call-template name="PartyIdentificationAndAccount6">
							<xsl:with-param name="PartyIdentificationAndAccount6" select="$PartyIdentificationAndAccount6"/>
							<xsl:with-param name="PartyIdentificationAndAccount6_parent">
								<xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancialInstitutionIdentification6" select="$CancellationRequestInformation1/IntrmyAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification6">
							<xsl:with-param name="FinancialInstitutionIdentification6" select="$FinancialInstitutionIdentification6"/>
							<xsl:with-param name="FinancialInstitutionIdentification6_parent">
								<xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancialInstitutionIdentification6_double" select="$CancellationRequestInformation1/FrstAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification6">
							<xsl:with-param name="FinancialInstitutionIdentification6" select="$FinancialInstitutionIdentification6_double"/>
							<xsl:with-param name="FinancialInstitutionIdentification6_parent">
								<xsl:value-of select="$CancellationRequestInformation1_pname"/>_<xsl:value-of select="$CancellationRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
