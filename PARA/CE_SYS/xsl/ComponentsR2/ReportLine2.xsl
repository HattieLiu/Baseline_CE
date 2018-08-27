<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="ReportLine2">
		<xsl:param name="ReportLine2"/>
		<xsl:param name="ReportLine2_parent"/>
		<xsl:variable name="ReportLine2_name" select="name($ReportLine2)"/>
		<xsl:variable name="ReportLine2_pname" select="$ReportLine2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ReportLine2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NetAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'NetAmt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportLine2/TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NetAmtDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>_NetAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>_NetAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportLine2/NetAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>_NetAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>_NetAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ReportLine2/NetAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$ReportLine2/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$ReportLine2/Adjstmnt">
							<xsl:variable name="Adjustment4" select="."/>
							<xsl:call-template name="Adjustment4">
								<xsl:with-param name="Adjustment4" select="$Adjustment4"/>
								<xsl:with-param name="Adjustment4_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportLine2_pname"/>_<xsl:value-of select="$ReportLine2_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
