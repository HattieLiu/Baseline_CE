<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PartyIdentificationAndAccount6.xsl"/>
	<xsl:include href="FinancialInstitutionIdentification6.xsl"/>
	<xsl:include href="ValidationStatusInformation1.xsl"/>
	<xsl:include href="CancellationStatusInformation1.xsl"/>
	<xsl:template name="OriginalRequestInformation1">
		<xsl:param name="OriginalRequestInformation1"/>
		<xsl:param name="OriginalRequestInformation1_parent"/>
		<xsl:variable name="OriginalRequestInformation1_name" select="name($OriginalRequestInformation1)"/>
		<xsl:variable name="OriginalRequestInformation1_pname" select="$OriginalRequestInformation1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$OriginalRequestInformation1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Id'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CreDtTmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CreDtTm'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$IdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>_Id</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OriginalRequestInformation1/Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CreDtTmDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>_CreDtTm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>_CreDtTm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OriginalRequestInformation1/CreDtTm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="PartyIdentificationAndAccount6" select="$OriginalRequestInformation1/FincgRqstr"/>
						<xsl:call-template name="PartyIdentificationAndAccount6">
							<xsl:with-param name="PartyIdentificationAndAccount6" select="$PartyIdentificationAndAccount6"/>
							<xsl:with-param name="PartyIdentificationAndAccount6_parent">
								<xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancialInstitutionIdentification6" select="$OriginalRequestInformation1/IntrmyAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification6">
							<xsl:with-param name="FinancialInstitutionIdentification6" select="$FinancialInstitutionIdentification6"/>
							<xsl:with-param name="FinancialInstitutionIdentification6_parent">
								<xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancialInstitutionIdentification6_double" select="$OriginalRequestInformation1/FrstAgt"/>
						<xsl:call-template name="FinancialInstitutionIdentification6">
							<xsl:with-param name="FinancialInstitutionIdentification6" select="$FinancialInstitutionIdentification6_double"/>
							<xsl:with-param name="FinancialInstitutionIdentification6_parent">
								<xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="ValidationStatusInformation1" select="$OriginalRequestInformation1/VldtnStsInf"/>
						<xsl:call-template name="ValidationStatusInformation1">
							<xsl:with-param name="ValidationStatusInformation1" select="$ValidationStatusInformation1"/>
							<xsl:with-param name="ValidationStatusInformation1_parent">
								<xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="CancellationStatusInformation1" select="$OriginalRequestInformation1/CxlStsInf"/>
						<xsl:call-template name="CancellationStatusInformation1">
							<xsl:with-param name="CancellationStatusInformation1" select="$CancellationStatusInformation1"/>
							<xsl:with-param name="CancellationStatusInformation1_parent">
								<xsl:value-of select="$OriginalRequestInformation1_pname"/>_<xsl:value-of select="$OriginalRequestInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
