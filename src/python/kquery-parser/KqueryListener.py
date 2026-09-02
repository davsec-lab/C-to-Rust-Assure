# Generated from Kquery.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .KqueryParser import KqueryParser
else:
    from KqueryParser import KqueryParser

# This class defines a complete listener for a parse tree produced by KqueryParser.
class KqueryListener(ParseTreeListener):

    # Enter a parse tree produced by KqueryParser#number_list.
    def enterNumber_list(self, ctx:KqueryParser.Number_listContext):
        pass

    # Exit a parse tree produced by KqueryParser#number_list.
    def exitNumber_list(self, ctx:KqueryParser.Number_listContext):
        pass


    # Enter a parse tree produced by KqueryParser#array_initializer.
    def enterArray_initializer(self, ctx:KqueryParser.Array_initializerContext):
        pass

    # Exit a parse tree produced by KqueryParser#array_initializer.
    def exitArray_initializer(self, ctx:KqueryParser.Array_initializerContext):
        pass


    # Enter a parse tree produced by KqueryParser#array_declaration.
    def enterArray_declaration(self, ctx:KqueryParser.Array_declarationContext):
        pass

    # Exit a parse tree produced by KqueryParser#array_declaration.
    def exitArray_declaration(self, ctx:KqueryParser.Array_declarationContext):
        pass


    # Enter a parse tree produced by KqueryParser#arithmetic_expr_kind.
    def enterArithmetic_expr_kind(self, ctx:KqueryParser.Arithmetic_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#arithmetic_expr_kind.
    def exitArithmetic_expr_kind(self, ctx:KqueryParser.Arithmetic_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#bitwise_expr_kind.
    def enterBitwise_expr_kind(self, ctx:KqueryParser.Bitwise_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#bitwise_expr_kind.
    def exitBitwise_expr_kind(self, ctx:KqueryParser.Bitwise_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#comparison_expr_kind.
    def enterComparison_expr_kind(self, ctx:KqueryParser.Comparison_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#comparison_expr_kind.
    def exitComparison_expr_kind(self, ctx:KqueryParser.Comparison_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#prog.
    def enterProg(self, ctx:KqueryParser.ProgContext):
        pass

    # Exit a parse tree produced by KqueryParser#prog.
    def exitProg(self, ctx:KqueryParser.ProgContext):
        pass


    # Enter a parse tree produced by KqueryParser#number_with_type.
    def enterNumber_with_type(self, ctx:KqueryParser.Number_with_typeContext):
        pass

    # Exit a parse tree produced by KqueryParser#number_with_type.
    def exitNumber_with_type(self, ctx:KqueryParser.Number_with_typeContext):
        pass


    # Enter a parse tree produced by KqueryParser#bv_expr_kind.
    def enterBv_expr_kind(self, ctx:KqueryParser.Bv_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#bv_expr_kind.
    def exitBv_expr_kind(self, ctx:KqueryParser.Bv_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#extension_expr_kind.
    def enterExtension_expr_kind(self, ctx:KqueryParser.Extension_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#extension_expr_kind.
    def exitExtension_expr_kind(self, ctx:KqueryParser.Extension_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#read_expr_kind.
    def enterRead_expr_kind(self, ctx:KqueryParser.Read_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#read_expr_kind.
    def exitRead_expr_kind(self, ctx:KqueryParser.Read_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#select_expr_kind.
    def enterSelect_expr_kind(self, ctx:KqueryParser.Select_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#select_expr_kind.
    def exitSelect_expr_kind(self, ctx:KqueryParser.Select_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#neg_expr_kind.
    def enterNeg_expr_kind(self, ctx:KqueryParser.Neg_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#neg_expr_kind.
    def exitNeg_expr_kind(self, ctx:KqueryParser.Neg_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#array_read_expr_kind.
    def enterArray_read_expr_kind(self, ctx:KqueryParser.Array_read_expr_kindContext):
        pass

    # Exit a parse tree produced by KqueryParser#array_read_expr_kind.
    def exitArray_read_expr_kind(self, ctx:KqueryParser.Array_read_expr_kindContext):
        pass


    # Enter a parse tree produced by KqueryParser#identifier.
    def enterIdentifier(self, ctx:KqueryParser.IdentifierContext):
        pass

    # Exit a parse tree produced by KqueryParser#identifier.
    def exitIdentifier(self, ctx:KqueryParser.IdentifierContext):
        pass


    # Enter a parse tree produced by KqueryParser#number.
    def enterNumber(self, ctx:KqueryParser.NumberContext):
        pass

    # Exit a parse tree produced by KqueryParser#number.
    def exitNumber(self, ctx:KqueryParser.NumberContext):
        pass


    # Enter a parse tree produced by KqueryParser#type.
    def enterType(self, ctx:KqueryParser.TypeContext):
        pass

    # Exit a parse tree produced by KqueryParser#type.
    def exitType(self, ctx:KqueryParser.TypeContext):
        pass


    # Enter a parse tree produced by KqueryParser#definition.
    def enterDefinition(self, ctx:KqueryParser.DefinitionContext):
        pass

    # Exit a parse tree produced by KqueryParser#definition.
    def exitDefinition(self, ctx:KqueryParser.DefinitionContext):
        pass


    # Enter a parse tree produced by KqueryParser#arithmetic_expr.
    def enterArithmetic_expr(self, ctx:KqueryParser.Arithmetic_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#arithmetic_expr.
    def exitArithmetic_expr(self, ctx:KqueryParser.Arithmetic_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#bitwise_expr.
    def enterBitwise_expr(self, ctx:KqueryParser.Bitwise_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#bitwise_expr.
    def exitBitwise_expr(self, ctx:KqueryParser.Bitwise_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#comparison_expr.
    def enterComparison_expr(self, ctx:KqueryParser.Comparison_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#comparison_expr.
    def exitComparison_expr(self, ctx:KqueryParser.Comparison_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#bv_expr.
    def enterBv_expr(self, ctx:KqueryParser.Bv_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#bv_expr.
    def exitBv_expr(self, ctx:KqueryParser.Bv_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#extension_expr.
    def enterExtension_expr(self, ctx:KqueryParser.Extension_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#extension_expr.
    def exitExtension_expr(self, ctx:KqueryParser.Extension_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#read_expr.
    def enterRead_expr(self, ctx:KqueryParser.Read_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#read_expr.
    def exitRead_expr(self, ctx:KqueryParser.Read_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#select_expr.
    def enterSelect_expr(self, ctx:KqueryParser.Select_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#select_expr.
    def exitSelect_expr(self, ctx:KqueryParser.Select_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#neg_expr.
    def enterNeg_expr(self, ctx:KqueryParser.Neg_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#neg_expr.
    def exitNeg_expr(self, ctx:KqueryParser.Neg_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#array_read_expr.
    def enterArray_read_expr(self, ctx:KqueryParser.Array_read_exprContext):
        pass

    # Exit a parse tree produced by KqueryParser#array_read_expr.
    def exitArray_read_expr(self, ctx:KqueryParser.Array_read_exprContext):
        pass


    # Enter a parse tree produced by KqueryParser#expr.
    def enterExpr(self, ctx:KqueryParser.ExprContext):
        pass

    # Exit a parse tree produced by KqueryParser#expr.
    def exitExpr(self, ctx:KqueryParser.ExprContext):
        pass


    # Enter a parse tree produced by KqueryParser#update_list.
    def enterUpdate_list(self, ctx:KqueryParser.Update_listContext):
        pass

    # Exit a parse tree produced by KqueryParser#update_list.
    def exitUpdate_list(self, ctx:KqueryParser.Update_listContext):
        pass


    # Enter a parse tree produced by KqueryParser#version.
    def enterVersion(self, ctx:KqueryParser.VersionContext):
        pass

    # Exit a parse tree produced by KqueryParser#version.
    def exitVersion(self, ctx:KqueryParser.VersionContext):
        pass



del KqueryParser