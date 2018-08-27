<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="BICIdentification1.xsl"/>
	<!--  *********** point <StatusReportItems2> start ********** -->
	<xsl:template name="StatusReportItems2">
		<xsl:param name="StatusReportItems2"/>
		<xsl:param name="StatusReportItems2_parent"/>
		<xsl:variable name="StatusReportItems2_name" select="name($StatusReportItems2)"/>
		<xsl:variable name="StatusReportItems2_pname" select="$StatusReportItems2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$StatusReportItems2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="StsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Sts'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SubStsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SubSts'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$StatusReportItems2/TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$StsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>_Sts</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>_Sts</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$StatusReportItems2/Sts"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$SubStsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>_SubSts</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>_SubSts</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$StatusReportItems2/SubSts"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$StatusReportItems2/RptdNtty">
							<xsl:variable name="BICIdentification1" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:value-of select="$StatusReportItems2_pname"/>_<xsl:value-of select="$StatusReportItems2_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <StatusReportItems2> end ********** -->
</xsl:stylesheet>
