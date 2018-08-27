<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <CertifiedCharacteristics1Choice> Start ********** -->
	<xsl:template name="CertifiedCharacteristics1Choice">
		<xsl:param name="CertifiedCharacteristics1Choice"/>
		<xsl:param name="CertifiedCharacteristics1Choice_parent"/>
		<xsl:variable name="CertifiedCharacteristics1Choice_name" select="name($CertifiedCharacteristics1Choice)"/>
		<xsl:variable name="CertifiedCharacteristics1Choice_pname" select="$CertifiedCharacteristics1Choice_parent"/>
		<xsl:variable name="PdctChrtcsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$CertifiedCharacteristics1Choice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="OrgnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Orgn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="QltyDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Qlty'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AnlysDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Anlys'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="HlthIndctnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'HlthIndctn'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PhytosntryIndctnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PhytosntryIndctn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>')</xsl:attribute>
					<xsl:value-of select="$PdctChrtcsDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$OrgnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_Orgn</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_Orgn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertifiedCharacteristics1Choice/Orgn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$QltyDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_Qlty</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_Qlty</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertifiedCharacteristics1Choice/Qlty"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AnlysDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_Anlys</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_Anlys</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertifiedCharacteristics1Choice/Anlys"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$HlthIndctnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_HlthIndctn</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_HlthIndctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertifiedCharacteristics1Choice/HlthIndctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$PhytosntryIndctnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_PhytosntryIndctn</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>_PhytosntryIndctn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertifiedCharacteristics1Choice/PhytosntryIndctn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="Quantity4" select="$CertifiedCharacteristics1Choice/Wght"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="Quantity4_double" select="$CertifiedCharacteristics1Choice/Qty"/>
						<xsl:call-template name="Quantity4">
							<xsl:with-param name="Quantity4" select="$Quantity4_double"/>
							<xsl:with-param name="Quantity4_parent">
								<xsl:value-of select="$CertifiedCharacteristics1Choice_pname"/>_<xsl:value-of select="$CertifiedCharacteristics1Choice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <CertifiedCharacteristics1Choice> end ********** -->
</xsl:stylesheet>
