<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <LineItemAndPOIdentification1> Start ********** -->
	<xsl:template name="LineItemAndPOIdentification1">
		<xsl:param name="LineItemAndPOIdentification1"/>
		<xsl:param name="LineItemAndPOIdentification1_parent"/>
		<xsl:variable name="LineItemAndPOIdentification1_name" select="name($LineItemAndPOIdentification1)"/>
		<xsl:variable name="LineItemAndPOIdentification1_pname" select="$LineItemAndPOIdentification1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$LineItemAndPOIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LineItmId'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$LineItemAndPOIdentification1_pname"/>_<xsl:value-of select="$LineItemAndPOIdentification1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$LineItemAndPOIdentification1_pname"/>_<xsl:value-of select="$LineItemAndPOIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<tr>
							<xsl:for-each select="$LineItemAndPOIdentification1/LineItmId">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$LineItmIdDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$LineItemAndPOIdentification1_pname"/>_<xsl:value-of select="$LineItemAndPOIdentification1_name"/>_LineItmId</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$LineItemAndPOIdentification1_pname"/>_<xsl:value-of select="$LineItemAndPOIdentification1_name"/>_LineItmId</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$LineItemAndPOIdentification1/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$LineItemAndPOIdentification1_pname"/>_<xsl:value-of select="$LineItemAndPOIdentification1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <LineItemAndPOIdentification1> end ********** -->
</xsl:stylesheet>
