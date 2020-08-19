Shader "TextureMask"
{
	Properties
	{
	   _Mask("Culling Mask", 2D) = "white" {}
	}
		SubShader
	{
	   Tags {"Queue" = "Background"}
	   Blend SrcAlpha OneMinusSrcAlpha
	   Lighting Off
	   ZWrite On
	   ZTest Always
	   Alphatest LEqual 0
	   Pass
	   {
		//fixed4 texCol = tex2D(_Mask, i.uv);

		  SetTexture[_Mask] {combine texture}
	   }
	}
}