<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <TransportedGoods1> Start ********** -->
	<xsl:template name="TransportedGoods1">
		<xsl:param name="TransportedGoods1"/>
		<xsl:param name="TransportedGoods1_parent"/>
		<xsl:variable name="TransportedGoods1_name" select="name($TransportedGoods1)"/>
		<xsl:variable name="TransportedGoods1_pname" select="$TransportedGoods1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$TransportedGoods1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="GoodsDescDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GoodsDesc'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$TransportedGoods1/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$GoodsDescDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransportedGoods1/GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="UserDefinedInformation1" select="$TransportedGoods1/BuyrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1"/>
							<xsl:with-param name="UserDefinedInformation1_parent">
								<xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="UserDefinedInformation1_double" select="$TransportedGoods1/SellrDfndInf"/>
						<xsl:call-template name="UserDefinedInformation1">
							<xsl:with-param name="UserDefinedInformation1" select="$UserDefinedInformation1_double"/>
							<xsl:with-param name="UserDefinedInformation1_parent">
								<xsl:value-of select="$TransportedGoods1_pname"/>_<xsl:value-of select="$TransportedGoods1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <TransportedGoods1> end ********** -->
</xsl:stylesheet>
