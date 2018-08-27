<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <UnitPrice9> Start ********** -->
	<xsl:template name="UnitPrice9">
		<xsl:param name="UnitPrice9"/>
		<xsl:param name="UnitPrice9_parent"/>
		<xsl:variable name="UnitPrice9_name" select="name($UnitPrice9)"/>
		<xsl:variable name="UnitPrice9_pname" select="$UnitPrice9_parent"/>
		<xsl:variable name="UnitPricDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'UnitPric'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="UnitOfMeasrCdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'UnitOfMeasrCd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrUnitOfMeasrDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OthrUnitOfMeasr'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Amt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FctrDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Fctr'"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>')</xsl:attribute>
					<xsl:value-of select="$UnitPricDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$UnitOfMeasrCdDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="UnitPrice9_name"/>_UnitOfMeasrCd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice9/UnitOfMeasrCd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:value-of select="$OthrUnitOfMeasrDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_OthrUnitOfMeasr</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice9/OthrUnitOfMeasr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">	
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_Amt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">8</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice9/Amt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice9/Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">	
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:value-of select="$FctrDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$UnitPrice9_pname"/>_<xsl:value-of select="$UnitPrice9_name"/>_Fctr</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$UnitPrice9/Fctr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <UnitPrice9> end ********** -->
</xsl:stylesheet>
