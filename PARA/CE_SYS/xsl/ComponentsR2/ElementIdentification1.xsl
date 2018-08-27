<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--  *********** point <ElementIdentification1> Start ********** -->
	<xsl:template name="ElementIdentification1">
		<xsl:param name="ElementIdentification1"/>
		<xsl:param name="ElementIdentification1_parent"/>
		<xsl:variable name="ElementIdentification1_name" select="name($ElementIdentification1)"/>
		<xsl:variable name="ElementIdentification1_pname" select="$ElementIdentification1_parent"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ElementIdentification1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DocIndxDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DocIndx'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtPthDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ElmtPth'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtNmDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ElmtNm'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ElmtValDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ElmtVal'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DocIndxDesc"/>
								<xsl:attribute name="align">right</xsl:attribute>												
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_DocIndx</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/DocIndx"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ElmtPthDesc"/>
								<xsl:attribute name="align">right</xsl:attribute>							
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_ElmtPth</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/ElmtPth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ElmtNmDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_ElmtNm</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/ElmtNm"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ElmtValDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_ElmtVal</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ElementIdentification1_pname"/>_<xsl:value-of select="$ElementIdentification1_name"/>_ElmtVal</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ElementIdentification1/ElmtVal"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ValidationResult2> end ********** -->
</xsl:stylesheet>
