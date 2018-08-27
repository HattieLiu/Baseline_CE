<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <ChargesDetails2> Start ********** -->
	<xsl:template name="ChargesDetails2">
		<xsl:param name="ChargesDetails2"/>
		<xsl:param name="ChargesDetails2_parent"/>
		<xsl:param name="Char2_FullName"/>
		<xsl:variable name="ChargesDetails2_name" select="name($ChargesDetails2)"/>
		<xsl:variable name="ChargesDetails2_pname" select="$ChargesDetails2_parent"/>
		<xsl:variable name="Char2_FullName_fox" select="$Char2_FullName"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ChargesDetails2_name"/>
			</xsl:call-template>
		</xsl:variable>
		
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Tp'"/>
		</xsl:call-template>
	</xsl:variable>
		<xsl:variable name="OthrChrgsTpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'OthrChrgsTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_<xsl:value-of select="$ChargesDetails2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_<xsl:value-of select="$ChargesDetails2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails2">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$TpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails2/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails2">
										<xsl:if test="Doc:OthrChrgsTp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
								<xsl:value-of select="$OthrChrgsTpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$Char2_FullName_fox"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails2/Doc:OthrChrgsTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$ChargesDetails2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails2_pname"/>_<xsl:value-of select="$ChargesDetails2_name"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails2/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ChargesDetails2> end ********** -->
</xsl:stylesheet>
