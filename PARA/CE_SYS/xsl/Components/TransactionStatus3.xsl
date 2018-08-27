<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** Winston ***  point <TransactionStatus3> start ********** -->
	<xsl:template name="TransactionStatus3">
		<xsl:param name="TransactionStatus3"/>
		<xsl:variable name="TransactionStatus3_name" select="name($TransactionStatus3)"/>
		<!-- Winston Law * For get the Field Description * 060614 begin-->
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$TransactionStatus3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="StsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Sts'"/>
			</xsl:call-template>
		</xsl:variable>
		<!-- Winston Law * For get the Field Description * 060614 end-->		
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$TransactionStatus3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$TransactionStatus3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:50</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								
								<xsl:attribute name="class">FieldName</xsl:attribute>
								<xsl:value-of select="$StsDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$TransactionStatus3_name"/>_Sts</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$TransactionStatus3_name"/>_Sts</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$TransactionStatus3/Doc:Sts"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  ***********Winston ***  point <TransactionStatus3> end ********** -->
</xsl:stylesheet>
