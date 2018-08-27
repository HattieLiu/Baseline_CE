<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <ChargesDetails1> Start ********** -->
	<xsl:template name="ChargesDetails1">
		<xsl:param name="ChargesDetails1"/>
		<xsl:param name="ChargesDetails1_parent"/>
		<xsl:param name="Char1_FullName"/>
		<xsl:variable name="ChargesDetails1_name" select="name($ChargesDetails1)"/>
		<xsl:variable name="ChargesDetails1_pname" select="$ChargesDetails1_parent"/>
		<xsl:variable name="Char1_FullName_fox" select="$Char1_FullName"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ChargesDetails1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OthrChrgsTpDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="'Doc:OthrChrgsTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TpDesc">
		<xsl:call-template name="getFldDesc1">
			<xsl:with-param name="FldId" select="'Tp'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="AmtDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Amt'"/>
		</xsl:call-template>
	</xsl:variable>
	<xsl:variable name="RateDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Rate'"/>
		</xsl:call-template>
	</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#A7B8C7</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="$Char1_FullName_fox"/>_<xsl:value-of select="$ChargesDetails1_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="class">ContentBorderLeftRithtBottom</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="$Char1_FullName_fox"/>_<xsl:value-of select="$ChargesDetails1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="85%" border="0" cellpadding="0" cellspacing="0" align="left">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:Tp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							     <xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Tp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:Tp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:OthrChrgsTp != ''">
											<xsl:attribute name="checked">true</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							     <xsl:attribute name="nowrap">true</xsl:attribute>
							      <xsl:attribute name="style">100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$OthrChrgsTpDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_OthrChrgsTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:OthrChrgsTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:Amt != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="nowrap">true</xsl:attribute>
							     <xsl:attribute name="style">100%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AmtDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Amt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:Amt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:element name="input">
									<xsl:attribute name="type">radio</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate_check</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate_check</xsl:attribute>
									<xsl:for-each select="$ChargesDetails1">
										<xsl:if test="Doc:Rate != ''">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:if>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
							<xsl:attribute name="nowrap">true</xsl:attribute>
							<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RateDesc"/>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ChargesDetails1_pname"/>_<xsl:value-of select="substring($ChargesDetails1_name,5)"/>_Rate</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ChargesDetails1/Doc:Rate"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ChargesDetails1> end ********** -->
</xsl:stylesheet>
