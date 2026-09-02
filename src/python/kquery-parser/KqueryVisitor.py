# Generated from Kquery.g4 by ANTLR 4.13.2
from antlr4 import *
if "." in __name__:
    from .KqueryParser import KqueryParser
else:
    from KqueryParser import KqueryParser

# This class defines a complete generic visitor for a parse tree produced by KqueryParser.

class KqueryVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by KqueryParser#number_list.
    def visitNumber_list(self, ctx:KqueryParser.Number_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#array_initializer.
    def visitArray_initializer(self, ctx:KqueryParser.Array_initializerContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#array_declaration.
    def visitArray_declaration(self, ctx:KqueryParser.Array_declarationContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#arithmetic_expr_kind.
    def visitArithmetic_expr_kind(self, ctx:KqueryParser.Arithmetic_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#bitwise_expr_kind.
    def visitBitwise_expr_kind(self, ctx:KqueryParser.Bitwise_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#comparison_expr_kind.
    def visitComparison_expr_kind(self, ctx:KqueryParser.Comparison_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#prog.
    def visitProg(self, ctx:KqueryParser.ProgContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#number_with_type.
    def visitNumber_with_type(self, ctx:KqueryParser.Number_with_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#bv_expr_kind.
    def visitBv_expr_kind(self, ctx:KqueryParser.Bv_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#extension_expr_kind.
    def visitExtension_expr_kind(self, ctx:KqueryParser.Extension_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#read_expr_kind.
    def visitRead_expr_kind(self, ctx:KqueryParser.Read_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#select_expr_kind.
    def visitSelect_expr_kind(self, ctx:KqueryParser.Select_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#neg_expr_kind.
    def visitNeg_expr_kind(self, ctx:KqueryParser.Neg_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#array_read_expr_kind.
    def visitArray_read_expr_kind(self, ctx:KqueryParser.Array_read_expr_kindContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#identifier.
    def visitIdentifier(self, ctx:KqueryParser.IdentifierContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#number.
    def visitNumber(self, ctx:KqueryParser.NumberContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#type.
    def visitType(self, ctx:KqueryParser.TypeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#definition.
    def visitDefinition(self, ctx:KqueryParser.DefinitionContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#arithmetic_expr.
    def visitArithmetic_expr(self, ctx:KqueryParser.Arithmetic_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#bitwise_expr.
    def visitBitwise_expr(self, ctx:KqueryParser.Bitwise_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#comparison_expr.
    def visitComparison_expr(self, ctx:KqueryParser.Comparison_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#bv_expr.
    def visitBv_expr(self, ctx:KqueryParser.Bv_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#extension_expr.
    def visitExtension_expr(self, ctx:KqueryParser.Extension_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#read_expr.
    def visitRead_expr(self, ctx:KqueryParser.Read_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#select_expr.
    def visitSelect_expr(self, ctx:KqueryParser.Select_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#neg_expr.
    def visitNeg_expr(self, ctx:KqueryParser.Neg_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#array_read_expr.
    def visitArray_read_expr(self, ctx:KqueryParser.Array_read_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#expr.
    def visitExpr(self, ctx:KqueryParser.ExprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#update_list.
    def visitUpdate_list(self, ctx:KqueryParser.Update_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by KqueryParser#version.
    def visitVersion(self, ctx:KqueryParser.VersionContext):
        return self.visitChildren(ctx)



del KqueryParser