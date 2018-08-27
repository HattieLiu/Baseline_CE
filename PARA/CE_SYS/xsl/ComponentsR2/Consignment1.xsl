<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="Quantity3.xsl"/>
	<!--  *********** point <Consignment1> Start ********** -->
	<xsl:template name="Consignment1">
		<xsl:param name="Consignment1"/>
		<xsl:param name="Consignment1_parent"/>
		<xsl:variable name="Consignment1_name" select="name($Consignment1)"/>
		<xsl:variable name="Consignment1_pname" select="$Consignment1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$Consignment1_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$Consignment1_pname"/>_<xsl:value-of select="$Consignment1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$Consignment1_pname"/>_<xsl:value-of select="$Consignment1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="Quantity3" select="$Consignment1/TtlQty"/>
						<xsl:call-template name="Quantity3">
							<xsl:with-param name="Quantity3" select="$Quantity3"/>
							<xsl:with-param name="Quantity3_parent">
								<xsl:value-of select="$Consignment1_pname"/>_<xsl:value-of select="$Consignment1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Quantity3_double" select="$Consignment1/TtlVol"/>
						<xsl:call-template name="Quantity3">
							<xsl:with-param name="Quantity3" select="$Quantity3_double"/>
							<xsl:with-param name="Quantity3_parent">
								<xsl:value-of select="$Consignment1_pname"/>_<xsl:value-of select="$Consignment1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Quantity3_three" select="$Consignment1/TtlWght"/>
						<xsl:call-template name="Quantity3">
							<xsl:with-param name="Quantity3" select="$Quantity3_three"/>
							<xsl:with-param name="Quantity3_parent">
								<xsl:value-of select="$Consignment1_pname"/>_<xsl:value-of select="$Consignment1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Consignment1> end ********** -->
</xsl:stylesheet>
