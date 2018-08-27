<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="FinancingRateOrAmountChoice.xsl"/>
	<xsl:template name="FinancingResult1">
		<xsl:param name="FinancingResult1"/>
		<xsl:param name="FinancingResult1_parent"/>
		<xsl:variable name="FinancingResult1_name" select="name($FinancingResult1)"/>
		<xsl:variable name="FinancingResult1_pname" select="$FinancingResult1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$FinancingResult1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FincgReqStsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FincgReqSts'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AddtlStsRsnInfDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AddtlStsRsnInf'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$FincgReqStsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>_FincgReqSts</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>_FincgReqSts</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$FinancingResult1/FincgReqSts"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$FinancingResult1/AddtlStsRsnInf">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$AddtlStsRsnInfDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>_AddtlStsRsnInf</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>_AddtlStsRsnInf</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:variable name="StatusReason4Choice" select="$FinancingResult1/StsRsn"/>
						<xsl:call-template name="StatusReason4Choice">
							<xsl:with-param name="StatusReason4Choice" select="$StatusReason4Choice"/>
							<xsl:with-param name="StatusReason4Choice_parent">
								<xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="FinancingRateOrAmountChoice" select="$FinancingResult1/FincdAmt"/>
						<xsl:call-template name="FinancingRateOrAmountChoice">
							<xsl:with-param name="FinancingRateOrAmountChoice" select="$FinancingRateOrAmountChoice"/>
							<xsl:with-param name="FinancingRateOrAmountChoice_parent">
								<xsl:value-of select="$FinancingResult1_pname"/>_<xsl:value-of select="$FinancingResult1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
