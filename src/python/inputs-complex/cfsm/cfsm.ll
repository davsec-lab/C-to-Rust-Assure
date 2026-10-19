; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/cfsm/cfsm.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/cfsm/cfsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfsm_Ctx = type { i8*, void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfsm_init(%struct.cfsm_Ctx* noundef %fsm, i8* noundef %instanceData) #0 {
entry:
  %fsm.addr = alloca %struct.cfsm_Ctx*, align 8
  %instanceData.addr = alloca i8*, align 8
  %.compoundliteral = alloca %struct.cfsm_Ctx, align 8
  store %struct.cfsm_Ctx* %fsm, %struct.cfsm_Ctx** %fsm.addr, align 8
  store i8* %instanceData, i8** %instanceData.addr, align 8
  %0 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %1 = bitcast %struct.cfsm_Ctx* %.compoundliteral to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 32, i1 false)
  %ctxPtr = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %.compoundliteral, i32 0, i32 0
  %2 = load i8*, i8** %instanceData.addr, align 8
  store i8* %2, i8** %ctxPtr, align 8
  %3 = bitcast %struct.cfsm_Ctx* %0 to i8*
  %4 = bitcast %struct.cfsm_Ctx* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfsm_transition(%struct.cfsm_Ctx* noundef %fsm, void (%struct.cfsm_Ctx*)* noundef %enterFunc) #0 {
entry:
  %fsm.addr = alloca %struct.cfsm_Ctx*, align 8
  %enterFunc.addr = alloca void (%struct.cfsm_Ctx*)*, align 8
  store %struct.cfsm_Ctx* %fsm, %struct.cfsm_Ctx** %fsm.addr, align 8
  store void (%struct.cfsm_Ctx*)* %enterFunc, void (%struct.cfsm_Ctx*)** %enterFunc.addr, align 8
  %0 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onLeave = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %0, i32 0, i32 1
  %1 = load void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)** %onLeave, align 8
  %cmp = icmp ne void (%struct.cfsm_Ctx*)* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onLeave1 = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %2, i32 0, i32 1
  %3 = load void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)** %onLeave1, align 8
  %4 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  call void %3(%struct.cfsm_Ctx* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onEvent = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %5, i32 0, i32 3
  store void (%struct.cfsm_Ctx*, i32)* null, void (%struct.cfsm_Ctx*, i32)** %onEvent, align 8
  %6 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onLeave2 = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %6, i32 0, i32 1
  store void (%struct.cfsm_Ctx*)* null, void (%struct.cfsm_Ctx*)** %onLeave2, align 8
  %7 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onProcess = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %7, i32 0, i32 2
  store void (%struct.cfsm_Ctx*)* null, void (%struct.cfsm_Ctx*)** %onProcess, align 8
  %8 = load void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)** %enterFunc.addr, align 8
  %cmp3 = icmp ne void (%struct.cfsm_Ctx*)* null, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %9 = load void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)** %enterFunc.addr, align 8
  %10 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  call void %9(%struct.cfsm_Ctx* noundef %10)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfsm_process(%struct.cfsm_Ctx* noundef %fsm) #0 {
entry:
  %fsm.addr = alloca %struct.cfsm_Ctx*, align 8
  store %struct.cfsm_Ctx* %fsm, %struct.cfsm_Ctx** %fsm.addr, align 8
  %0 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onProcess = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %0, i32 0, i32 2
  %1 = load void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)** %onProcess, align 8
  %cmp = icmp ne void (%struct.cfsm_Ctx*)* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onProcess1 = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %2, i32 0, i32 2
  %3 = load void (%struct.cfsm_Ctx*)*, void (%struct.cfsm_Ctx*)** %onProcess1, align 8
  %4 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  call void %3(%struct.cfsm_Ctx* noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfsm_event(%struct.cfsm_Ctx* noundef %fsm, i32 noundef %eventId) #0 {
entry:
  %fsm.addr = alloca %struct.cfsm_Ctx*, align 8
  %eventId.addr = alloca i32, align 4
  store %struct.cfsm_Ctx* %fsm, %struct.cfsm_Ctx** %fsm.addr, align 8
  store i32 %eventId, i32* %eventId.addr, align 4
  %0 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onEvent = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %0, i32 0, i32 3
  %1 = load void (%struct.cfsm_Ctx*, i32)*, void (%struct.cfsm_Ctx*, i32)** %onEvent, align 8
  %cmp = icmp ne void (%struct.cfsm_Ctx*, i32)* null, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %onEvent1 = getelementptr inbounds %struct.cfsm_Ctx, %struct.cfsm_Ctx* %2, i32 0, i32 3
  %3 = load void (%struct.cfsm_Ctx*, i32)*, void (%struct.cfsm_Ctx*, i32)** %onEvent1, align 8
  %4 = load %struct.cfsm_Ctx*, %struct.cfsm_Ctx** %fsm.addr, align 8
  %5 = load i32, i32* %eventId.addr, align 4
  call void %3(%struct.cfsm_Ctx* noundef %4, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
