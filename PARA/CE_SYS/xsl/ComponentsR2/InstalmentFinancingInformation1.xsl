<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="InstalmentFinancingInformation1">
		<xsl:param name="InstalmentFinancingInformation1"/>
		<xsl:param name="InstalmentFinancingInformation1_parent"/>
		<xsl:variable name="InstalmentFinancingInformation1_name" select="name($InstalmentFinancingInformation1)"/>
		<xsl:variable name="InstalmentFinancingInformation1_pname" select="$InstalmentFinancingInformation1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InstalmentFinancingInformation1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InstlmtSeqIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InstlmtSeqId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InstlmtTtlAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InstlmtTtlAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$InstlmtSeqIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>_InstlmtSeqId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>_InstlmtSeqId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InstalmentFinancingInformation1/InstlmtSeqId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$InstlmtTtlAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>_InstlmtTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>_InstlmtTtlAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InstalmentFinancingInformation1/InstlmtTtlAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>_InstlmtTtlAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>_InstlmtTtlAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InstalmentFinancingInformation1/InstlmtTtlAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="FinancingResult1" select="$InstalmentFinancingInformation1/InstlmtFincgRslt"/>
						<xsl:call-template name="FinancingResult1">
							<xsl:with-param name="FinancingResult1" select="$FinancingResult1"/>
							<xsl:with-param name="FinancingResult1_parent">
								<xsl:value-of select="$InstalmentFinancingInformation1_pname"/>_<xsl:value-of select="$InstalmentFinancingInformation1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
