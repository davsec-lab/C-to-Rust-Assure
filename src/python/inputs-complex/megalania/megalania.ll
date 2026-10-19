; ModuleID = '/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/megalania.c'
source_filename = "/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/megalania.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZMAPacket = type { i8, i32, i16 }
%struct.LZMAPacketHeader = type { i8, i8, i8, i8, i8 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.OutputInterface_struct = type { {}*, i8* }
%struct.LZMAState = type { i8*, i64, %struct.LZMAProperties, i8, [4 x i32], %struct.LZMAProbabilityModel, i64 }
%struct.LZMAProperties = type { i8, i8, i8 }
%struct.LZMAProbabilityModel = type { [768 x i16], %struct.LengthProbabilityModel, %struct.LengthProbabilityModel, %struct.DistanceProbabilityModel, %struct.ContextStateProbabilityModel }
%struct.LengthProbabilityModel = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.DistanceProbabilityModel = type { [4 x [64 x i16]], [16 x i16], [115 x i16] }
%struct.ContextStateProbabilityModel = type { [192 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [192 x i16] }
%struct.EncoderInterface_struct = type { void (%struct.EncoderInterface_struct*, i1, i16)*, void (%struct.EncoderInterface_struct*, i32, i32)*, i8* }
%struct.PacketEnumerator_struct = type { i8*, i64, %struct.SubstringEnumerator_struct* }
%struct.SubstringEnumerator_struct = type { i8*, i64, i64, i64, [256 x [256 x i64]], [256 x [256 x i64]], i64* }
%struct.TopKPacketFinder_struct = type { i64, %struct.TopKEntry*, %struct.LZMAPacket*, %struct.MaxHeap_struct*, %struct.PacketEnumerator_struct* }
%struct.TopKEntry = type { %struct.LZMAPacket, float }
%struct.MaxHeap_struct = type { i32*, i64, i64, i32 (i8*, i32, i32)*, i8* }
%struct.PacketSlab_struct = type { i64, %struct.LZMAPacket* }
%struct.PacketSlabNeighbour = type { %struct.LZMAState, %struct.PacketSlab_struct*, i64, %struct.PacketSlabUndoStack }
%struct.PacketSlabUndoStack = type { i64, i64, [16 x %struct.PacketSlabUndo], %struct.PacketSlabUndoHeap_struct* }
%struct.PacketSlabUndo = type { i64, %struct.LZMAPacket }
%struct.PacketSlabUndoHeap_struct = type { i64, i64, %struct.PacketSlabUndo*, %struct.PacketSlabUndoHeap_struct* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.RangeEncoderData = type { %struct.OutputInterface_struct*, i64, i32, i8, i64 }
%struct.PacketEnumeratorSubstringCallbackData = type { %struct.LZMAState*, void (i8*, %struct.LZMAState*, i64, i16)*, i8* }

@__const.literal_packet.packet = private unnamed_addr constant %struct.LZMAPacket { i8 1, i32 0, i16 1 }, align 4
@__const.short_rep_packet.packet = private unnamed_addr constant %struct.LZMAPacket { i8 3, i32 0, i16 1 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"len >= 2\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/lzma_packet_encoder.c\00", align 1
@__PRETTY_FUNCTION__.lzma_encode_length = private unnamed_addr constant [84 x i8] c"void lzma_encode_length(LengthProbabilityModel *, EncoderInterface *, unsigned int)\00", align 1
@__const.lzma_encode_match.head = private unnamed_addr constant %struct.LZMAPacketHeader { i8 1, i8 0, i8 0, i8 0, i8 0 }, align 1
@__const.lzma_encode_short_rep.head = private unnamed_addr constant %struct.LZMAPacketHeader { i8 1, i8 1, i8 0, i8 0, i8 0 }, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__.lzma_encode_packet = private unnamed_addr constant [69 x i8] c"void lzma_encode_packet(LZMAState *, EncoderInterface *, LZMAPacket)\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/lzma_state.c\00", align 1
@__PRETTY_FUNCTION__.lzma_state_update_ctx_state = private unnamed_addr constant [60 x i8] c"void lzma_state_update_ctx_state(LZMAState *, unsigned int)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"dist_index < 4\00", align 1
@__PRETTY_FUNCTION__.lzma_state_promote_distance_at = private unnamed_addr constant [63 x i8] c"void lzma_state_promote_distance_at(LZMAState *, unsigned int)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"usage: %s filename\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"current file size: %f\09step: %d\09epoch: %04d - %.1f%%\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Could not allocate memory for MaxHeap.\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Could not allocate memory for MaxHeap store.\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"could not open %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"could not stat %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"could not mmap %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"could not close fd %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"could map anonymous memory of size %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"could not munmap data\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"enumerator->data == lzma_state->data\00", align 1
@.str.16 = private unnamed_addr constant [112 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/packet_enumerator.c\00", align 1
@__PRETTY_FUNCTION__.packet_enumerator_for_each = private unnamed_addr constant [111 x i8] c"void packet_enumerator_for_each(const PacketEnumerator *, const LZMAState *, PacketEnumeratorCallback, void *)\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"packet.type == LONG_REP\00", align 1
@.str.18 = private unnamed_addr constant [116 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/packet_slab_neighbour.c\00", align 1
@__PRETTY_FUNCTION__.validate_long_rep_packet = private unnamed_addr constant [62 x i8] c"_Bool validate_long_rep_packet(const LZMAState *, LZMAPacket)\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"undo_stack->last != NULL\00", align 1
@.str.20 = private unnamed_addr constant [117 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/packet_slab_undo_stack.c\00", align 1
@__PRETTY_FUNCTION__.packet_slab_undo_stack_insert = private unnamed_addr constant [74 x i8] c"void packet_slab_undo_stack_insert(PacketSlabUndoStack *, PacketSlabUndo)\00", align 1
@LOG2_LOOKUP = internal constant [2048 x i64] [i64 0, i64 22528, i64 20480, i64 19281, i64 18432, i64 17772, i64 17233, i64 16778, i64 16384, i64 16035, i64 15724, i64 15443, i64 15185, i64 14949, i64 14730, i64 14526, i64 14336, i64 14156, i64 13987, i64 13828, i64 13676, i64 13532, i64 13395, i64 13263, i64 13137, i64 13017, i64 12901, i64 12789, i64 12682, i64 12578, i64 12478, i64 12381, i64 12288, i64 12197, i64 12108, i64 12023, i64 11939, i64 11859, i64 11780, i64 11703, i64 11628, i64 11555, i64 11484, i64 11415, i64 11347, i64 11280, i64 11215, i64 11152, i64 11089, i64 11029, i64 10969, i64 10910, i64 10853, i64 10797, i64 10741, i64 10687, i64 10634, i64 10582, i64 10530, i64 10480, i64 10430, i64 10381, i64 10333, i64 10286, i64 10240, i64 10194, i64 10149, i64 10104, i64 10060, i64 10017, i64 9975, i64 9933, i64 9891, i64 9851, i64 9811, i64 9771, i64 9732, i64 9693, i64 9655, i64 9617, i64 9580, i64 9543, i64 9507, i64 9471, i64 9436, i64 9401, i64 9367, i64 9332, i64 9299, i64 9265, i64 9232, i64 9200, i64 9167, i64 9135, i64 9104, i64 9072, i64 9041, i64 9011, i64 8981, i64 8951, i64 8921, i64 8891, i64 8862, i64 8834, i64 8805, i64 8777, i64 8749, i64 8721, i64 8693, i64 8666, i64 8639, i64 8613, i64 8586, i64 8560, i64 8534, i64 8508, i64 8482, i64 8457, i64 8432, i64 8407, i64 8382, i64 8358, i64 8333, i64 8309, i64 8285, i64 8262, i64 8238, i64 8215, i64 8192, i64 8169, i64 8146, i64 8123, i64 8101, i64 8078, i64 8056, i64 8034, i64 8012, i64 7991, i64 7969, i64 7948, i64 7927, i64 7906, i64 7885, i64 7864, i64 7843, i64 7823, i64 7803, i64 7783, i64 7763, i64 7743, i64 7723, i64 7703, i64 7684, i64 7664, i64 7645, i64 7626, i64 7607, i64 7588, i64 7569, i64 7551, i64 7532, i64 7514, i64 7495, i64 7477, i64 7459, i64 7441, i64 7423, i64 7406, i64 7388, i64 7370, i64 7353, i64 7336, i64 7319, i64 7301, i64 7284, i64 7267, i64 7251, i64 7234, i64 7217, i64 7201, i64 7184, i64 7168, i64 7152, i64 7135, i64 7119, i64 7103, i64 7087, i64 7071, i64 7056, i64 7040, i64 7024, i64 7009, i64 6993, i64 6978, i64 6963, i64 6948, i64 6933, i64 6918, i64 6903, i64 6888, i64 6873, i64 6858, i64 6843, i64 6829, i64 6814, i64 6800, i64 6786, i64 6771, i64 6757, i64 6743, i64 6729, i64 6715, i64 6701, i64 6687, i64 6673, i64 6659, i64 6645, i64 6632, i64 6618, i64 6605, i64 6591, i64 6578, i64 6565, i64 6551, i64 6538, i64 6525, i64 6512, i64 6499, i64 6486, i64 6473, i64 6460, i64 6447, i64 6434, i64 6422, i64 6409, i64 6396, i64 6384, i64 6371, i64 6359, i64 6347, i64 6334, i64 6322, i64 6310, i64 6297, i64 6285, i64 6273, i64 6261, i64 6249, i64 6237, i64 6225, i64 6214, i64 6202, i64 6190, i64 6178, i64 6167, i64 6155, i64 6144, i64 6132, i64 6121, i64 6109, i64 6098, i64 6086, i64 6075, i64 6064, i64 6053, i64 6041, i64 6030, i64 6019, i64 6008, i64 5997, i64 5986, i64 5975, i64 5964, i64 5954, i64 5943, i64 5932, i64 5921, i64 5911, i64 5900, i64 5889, i64 5879, i64 5868, i64 5858, i64 5847, i64 5837, i64 5826, i64 5816, i64 5806, i64 5795, i64 5785, i64 5775, i64 5765, i64 5755, i64 5745, i64 5735, i64 5725, i64 5715, i64 5705, i64 5695, i64 5685, i64 5675, i64 5665, i64 5655, i64 5645, i64 5636, i64 5626, i64 5616, i64 5607, i64 5597, i64 5588, i64 5578, i64 5568, i64 5559, i64 5550, i64 5540, i64 5531, i64 5521, i64 5512, i64 5503, i64 5493, i64 5484, i64 5475, i64 5466, i64 5457, i64 5447, i64 5438, i64 5429, i64 5420, i64 5411, i64 5402, i64 5393, i64 5384, i64 5375, i64 5367, i64 5358, i64 5349, i64 5340, i64 5331, i64 5322, i64 5314, i64 5305, i64 5296, i64 5288, i64 5279, i64 5271, i64 5262, i64 5253, i64 5245, i64 5236, i64 5228, i64 5219, i64 5211, i64 5203, i64 5194, i64 5186, i64 5178, i64 5169, i64 5161, i64 5153, i64 5144, i64 5136, i64 5128, i64 5120, i64 5112, i64 5104, i64 5095, i64 5087, i64 5079, i64 5071, i64 5063, i64 5055, i64 5047, i64 5039, i64 5031, i64 5023, i64 5016, i64 5008, i64 5000, i64 4992, i64 4984, i64 4976, i64 4969, i64 4961, i64 4953, i64 4945, i64 4938, i64 4930, i64 4923, i64 4915, i64 4907, i64 4900, i64 4892, i64 4885, i64 4877, i64 4870, i64 4862, i64 4855, i64 4847, i64 4840, i64 4832, i64 4825, i64 4818, i64 4810, i64 4803, i64 4795, i64 4788, i64 4781, i64 4774, i64 4766, i64 4759, i64 4752, i64 4745, i64 4738, i64 4730, i64 4723, i64 4716, i64 4709, i64 4702, i64 4695, i64 4688, i64 4681, i64 4674, i64 4667, i64 4660, i64 4653, i64 4646, i64 4639, i64 4632, i64 4625, i64 4618, i64 4611, i64 4604, i64 4597, i64 4591, i64 4584, i64 4577, i64 4570, i64 4563, i64 4557, i64 4550, i64 4543, i64 4537, i64 4530, i64 4523, i64 4517, i64 4510, i64 4503, i64 4497, i64 4490, i64 4483, i64 4477, i64 4470, i64 4464, i64 4457, i64 4451, i64 4444, i64 4438, i64 4431, i64 4425, i64 4418, i64 4412, i64 4406, i64 4399, i64 4393, i64 4386, i64 4380, i64 4374, i64 4367, i64 4361, i64 4355, i64 4348, i64 4342, i64 4336, i64 4330, i64 4323, i64 4317, i64 4311, i64 4305, i64 4299, i64 4292, i64 4286, i64 4280, i64 4274, i64 4268, i64 4262, i64 4256, i64 4249, i64 4243, i64 4237, i64 4231, i64 4225, i64 4219, i64 4213, i64 4207, i64 4201, i64 4195, i64 4189, i64 4183, i64 4177, i64 4171, i64 4166, i64 4160, i64 4154, i64 4148, i64 4142, i64 4136, i64 4130, i64 4124, i64 4119, i64 4113, i64 4107, i64 4101, i64 4096, i64 4090, i64 4084, i64 4078, i64 4073, i64 4067, i64 4061, i64 4055, i64 4050, i64 4044, i64 4038, i64 4033, i64 4027, i64 4021, i64 4016, i64 4010, i64 4005, i64 3999, i64 3993, i64 3988, i64 3982, i64 3977, i64 3971, i64 3966, i64 3960, i64 3955, i64 3949, i64 3944, i64 3938, i64 3933, i64 3927, i64 3922, i64 3916, i64 3911, i64 3906, i64 3900, i64 3895, i64 3889, i64 3884, i64 3879, i64 3873, i64 3868, i64 3863, i64 3857, i64 3852, i64 3847, i64 3841, i64 3836, i64 3831, i64 3825, i64 3820, i64 3815, i64 3810, i64 3804, i64 3799, i64 3794, i64 3789, i64 3784, i64 3778, i64 3773, i64 3768, i64 3763, i64 3758, i64 3753, i64 3747, i64 3742, i64 3737, i64 3732, i64 3727, i64 3722, i64 3717, i64 3712, i64 3707, i64 3702, i64 3697, i64 3692, i64 3687, i64 3682, i64 3677, i64 3672, i64 3667, i64 3662, i64 3657, i64 3652, i64 3647, i64 3642, i64 3637, i64 3632, i64 3627, i64 3622, i64 3617, i64 3612, i64 3607, i64 3602, i64 3597, i64 3593, i64 3588, i64 3583, i64 3578, i64 3573, i64 3568, i64 3564, i64 3559, i64 3554, i64 3549, i64 3544, i64 3540, i64 3535, i64 3530, i64 3525, i64 3520, i64 3516, i64 3511, i64 3506, i64 3502, i64 3497, i64 3492, i64 3487, i64 3483, i64 3478, i64 3473, i64 3469, i64 3464, i64 3459, i64 3455, i64 3450, i64 3445, i64 3441, i64 3436, i64 3432, i64 3427, i64 3422, i64 3418, i64 3413, i64 3409, i64 3404, i64 3399, i64 3395, i64 3390, i64 3386, i64 3381, i64 3377, i64 3372, i64 3368, i64 3363, i64 3359, i64 3354, i64 3350, i64 3345, i64 3341, i64 3336, i64 3332, i64 3327, i64 3323, i64 3319, i64 3314, i64 3310, i64 3305, i64 3301, i64 3296, i64 3292, i64 3288, i64 3283, i64 3279, i64 3274, i64 3270, i64 3266, i64 3261, i64 3257, i64 3253, i64 3248, i64 3244, i64 3240, i64 3235, i64 3231, i64 3227, i64 3223, i64 3218, i64 3214, i64 3210, i64 3205, i64 3201, i64 3197, i64 3193, i64 3188, i64 3184, i64 3180, i64 3176, i64 3171, i64 3167, i64 3163, i64 3159, i64 3155, i64 3150, i64 3146, i64 3142, i64 3138, i64 3134, i64 3130, i64 3125, i64 3121, i64 3117, i64 3113, i64 3109, i64 3105, i64 3101, i64 3096, i64 3092, i64 3088, i64 3084, i64 3080, i64 3076, i64 3072, i64 3068, i64 3064, i64 3060, i64 3056, i64 3051, i64 3047, i64 3043, i64 3039, i64 3035, i64 3031, i64 3027, i64 3023, i64 3019, i64 3015, i64 3011, i64 3007, i64 3003, i64 2999, i64 2995, i64 2991, i64 2987, i64 2983, i64 2979, i64 2975, i64 2972, i64 2968, i64 2964, i64 2960, i64 2956, i64 2952, i64 2948, i64 2944, i64 2940, i64 2936, i64 2932, i64 2928, i64 2925, i64 2921, i64 2917, i64 2913, i64 2909, i64 2905, i64 2901, i64 2897, i64 2894, i64 2890, i64 2886, i64 2882, i64 2878, i64 2875, i64 2871, i64 2867, i64 2863, i64 2859, i64 2855, i64 2852, i64 2848, i64 2844, i64 2840, i64 2837, i64 2833, i64 2829, i64 2825, i64 2822, i64 2818, i64 2814, i64 2810, i64 2807, i64 2803, i64 2799, i64 2795, i64 2792, i64 2788, i64 2784, i64 2781, i64 2777, i64 2773, i64 2770, i64 2766, i64 2762, i64 2758, i64 2755, i64 2751, i64 2747, i64 2744, i64 2740, i64 2737, i64 2733, i64 2729, i64 2726, i64 2722, i64 2718, i64 2715, i64 2711, i64 2708, i64 2704, i64 2700, i64 2697, i64 2693, i64 2690, i64 2686, i64 2682, i64 2679, i64 2675, i64 2672, i64 2668, i64 2665, i64 2661, i64 2657, i64 2654, i64 2650, i64 2647, i64 2643, i64 2640, i64 2636, i64 2633, i64 2629, i64 2626, i64 2622, i64 2619, i64 2615, i64 2612, i64 2608, i64 2605, i64 2601, i64 2598, i64 2594, i64 2591, i64 2587, i64 2584, i64 2580, i64 2577, i64 2574, i64 2570, i64 2567, i64 2563, i64 2560, i64 2556, i64 2553, i64 2549, i64 2546, i64 2543, i64 2539, i64 2536, i64 2532, i64 2529, i64 2526, i64 2522, i64 2519, i64 2515, i64 2512, i64 2509, i64 2505, i64 2502, i64 2499, i64 2495, i64 2492, i64 2489, i64 2485, i64 2482, i64 2479, i64 2475, i64 2472, i64 2469, i64 2465, i64 2462, i64 2459, i64 2455, i64 2452, i64 2449, i64 2445, i64 2442, i64 2439, i64 2435, i64 2432, i64 2429, i64 2426, i64 2422, i64 2419, i64 2416, i64 2413, i64 2409, i64 2406, i64 2403, i64 2399, i64 2396, i64 2393, i64 2390, i64 2387, i64 2383, i64 2380, i64 2377, i64 2374, i64 2370, i64 2367, i64 2364, i64 2361, i64 2358, i64 2354, i64 2351, i64 2348, i64 2345, i64 2342, i64 2338, i64 2335, i64 2332, i64 2329, i64 2326, i64 2322, i64 2319, i64 2316, i64 2313, i64 2310, i64 2307, i64 2304, i64 2300, i64 2297, i64 2294, i64 2291, i64 2288, i64 2285, i64 2282, i64 2278, i64 2275, i64 2272, i64 2269, i64 2266, i64 2263, i64 2260, i64 2257, i64 2254, i64 2251, i64 2247, i64 2244, i64 2241, i64 2238, i64 2235, i64 2232, i64 2229, i64 2226, i64 2223, i64 2220, i64 2217, i64 2214, i64 2211, i64 2208, i64 2205, i64 2201, i64 2198, i64 2195, i64 2192, i64 2189, i64 2186, i64 2183, i64 2180, i64 2177, i64 2174, i64 2171, i64 2168, i64 2165, i64 2162, i64 2159, i64 2156, i64 2153, i64 2150, i64 2147, i64 2144, i64 2141, i64 2138, i64 2135, i64 2132, i64 2129, i64 2126, i64 2123, i64 2121, i64 2118, i64 2115, i64 2112, i64 2109, i64 2106, i64 2103, i64 2100, i64 2097, i64 2094, i64 2091, i64 2088, i64 2085, i64 2082, i64 2079, i64 2076, i64 2074, i64 2071, i64 2068, i64 2065, i64 2062, i64 2059, i64 2056, i64 2053, i64 2050, i64 2048, i64 2045, i64 2042, i64 2039, i64 2036, i64 2033, i64 2030, i64 2027, i64 2025, i64 2022, i64 2019, i64 2016, i64 2013, i64 2010, i64 2007, i64 2005, i64 2002, i64 1999, i64 1996, i64 1993, i64 1990, i64 1988, i64 1985, i64 1982, i64 1979, i64 1976, i64 1973, i64 1971, i64 1968, i64 1965, i64 1962, i64 1959, i64 1957, i64 1954, i64 1951, i64 1948, i64 1945, i64 1943, i64 1940, i64 1937, i64 1934, i64 1932, i64 1929, i64 1926, i64 1923, i64 1920, i64 1918, i64 1915, i64 1912, i64 1909, i64 1907, i64 1904, i64 1901, i64 1898, i64 1896, i64 1893, i64 1890, i64 1887, i64 1885, i64 1882, i64 1879, i64 1877, i64 1874, i64 1871, i64 1868, i64 1866, i64 1863, i64 1860, i64 1858, i64 1855, i64 1852, i64 1849, i64 1847, i64 1844, i64 1841, i64 1839, i64 1836, i64 1833, i64 1831, i64 1828, i64 1825, i64 1823, i64 1820, i64 1817, i64 1815, i64 1812, i64 1809, i64 1807, i64 1804, i64 1801, i64 1799, i64 1796, i64 1793, i64 1791, i64 1788, i64 1785, i64 1783, i64 1780, i64 1777, i64 1775, i64 1772, i64 1770, i64 1767, i64 1764, i64 1762, i64 1759, i64 1756, i64 1754, i64 1751, i64 1749, i64 1746, i64 1743, i64 1741, i64 1738, i64 1736, i64 1733, i64 1730, i64 1728, i64 1725, i64 1723, i64 1720, i64 1718, i64 1715, i64 1712, i64 1710, i64 1707, i64 1705, i64 1702, i64 1699, i64 1697, i64 1694, i64 1692, i64 1689, i64 1687, i64 1684, i64 1682, i64 1679, i64 1677, i64 1674, i64 1671, i64 1669, i64 1666, i64 1664, i64 1661, i64 1659, i64 1656, i64 1654, i64 1651, i64 1649, i64 1646, i64 1644, i64 1641, i64 1639, i64 1636, i64 1634, i64 1631, i64 1629, i64 1626, i64 1624, i64 1621, i64 1619, i64 1616, i64 1614, i64 1611, i64 1609, i64 1606, i64 1604, i64 1601, i64 1599, i64 1596, i64 1594, i64 1591, i64 1589, i64 1586, i64 1584, i64 1581, i64 1579, i64 1576, i64 1574, i64 1572, i64 1569, i64 1567, i64 1564, i64 1562, i64 1559, i64 1557, i64 1554, i64 1552, i64 1549, i64 1547, i64 1545, i64 1542, i64 1540, i64 1537, i64 1535, i64 1532, i64 1530, i64 1528, i64 1525, i64 1523, i64 1520, i64 1518, i64 1516, i64 1513, i64 1511, i64 1508, i64 1506, i64 1504, i64 1501, i64 1499, i64 1496, i64 1494, i64 1492, i64 1489, i64 1487, i64 1484, i64 1482, i64 1480, i64 1477, i64 1475, i64 1472, i64 1470, i64 1468, i64 1465, i64 1463, i64 1461, i64 1458, i64 1456, i64 1454, i64 1451, i64 1449, i64 1446, i64 1444, i64 1442, i64 1439, i64 1437, i64 1435, i64 1432, i64 1430, i64 1428, i64 1425, i64 1423, i64 1421, i64 1418, i64 1416, i64 1414, i64 1411, i64 1409, i64 1407, i64 1404, i64 1402, i64 1400, i64 1397, i64 1395, i64 1393, i64 1391, i64 1388, i64 1386, i64 1384, i64 1381, i64 1379, i64 1377, i64 1374, i64 1372, i64 1370, i64 1367, i64 1365, i64 1363, i64 1361, i64 1358, i64 1356, i64 1354, i64 1351, i64 1349, i64 1347, i64 1345, i64 1342, i64 1340, i64 1338, i64 1336, i64 1333, i64 1331, i64 1329, i64 1327, i64 1324, i64 1322, i64 1320, i64 1317, i64 1315, i64 1313, i64 1311, i64 1308, i64 1306, i64 1304, i64 1302, i64 1300, i64 1297, i64 1295, i64 1293, i64 1291, i64 1288, i64 1286, i64 1284, i64 1282, i64 1279, i64 1277, i64 1275, i64 1273, i64 1271, i64 1268, i64 1266, i64 1264, i64 1262, i64 1259, i64 1257, i64 1255, i64 1253, i64 1251, i64 1248, i64 1246, i64 1244, i64 1242, i64 1240, i64 1237, i64 1235, i64 1233, i64 1231, i64 1229, i64 1226, i64 1224, i64 1222, i64 1220, i64 1218, i64 1216, i64 1213, i64 1211, i64 1209, i64 1207, i64 1205, i64 1203, i64 1200, i64 1198, i64 1196, i64 1194, i64 1192, i64 1190, i64 1187, i64 1185, i64 1183, i64 1181, i64 1179, i64 1177, i64 1175, i64 1172, i64 1170, i64 1168, i64 1166, i64 1164, i64 1162, i64 1160, i64 1157, i64 1155, i64 1153, i64 1151, i64 1149, i64 1147, i64 1145, i64 1142, i64 1140, i64 1138, i64 1136, i64 1134, i64 1132, i64 1130, i64 1128, i64 1126, i64 1123, i64 1121, i64 1119, i64 1117, i64 1115, i64 1113, i64 1111, i64 1109, i64 1107, i64 1104, i64 1102, i64 1100, i64 1098, i64 1096, i64 1094, i64 1092, i64 1090, i64 1088, i64 1086, i64 1084, i64 1082, i64 1079, i64 1077, i64 1075, i64 1073, i64 1071, i64 1069, i64 1067, i64 1065, i64 1063, i64 1061, i64 1059, i64 1057, i64 1055, i64 1053, i64 1050, i64 1048, i64 1046, i64 1044, i64 1042, i64 1040, i64 1038, i64 1036, i64 1034, i64 1032, i64 1030, i64 1028, i64 1026, i64 1024, i64 1022, i64 1020, i64 1018, i64 1016, i64 1014, i64 1012, i64 1010, i64 1008, i64 1006, i64 1003, i64 1001, i64 999, i64 997, i64 995, i64 993, i64 991, i64 989, i64 987, i64 985, i64 983, i64 981, i64 979, i64 977, i64 975, i64 973, i64 971, i64 969, i64 967, i64 965, i64 963, i64 961, i64 959, i64 957, i64 955, i64 953, i64 951, i64 949, i64 947, i64 945, i64 943, i64 941, i64 939, i64 937, i64 935, i64 933, i64 931, i64 929, i64 927, i64 925, i64 924, i64 922, i64 920, i64 918, i64 916, i64 914, i64 912, i64 910, i64 908, i64 906, i64 904, i64 902, i64 900, i64 898, i64 896, i64 894, i64 892, i64 890, i64 888, i64 886, i64 884, i64 882, i64 880, i64 878, i64 877, i64 875, i64 873, i64 871, i64 869, i64 867, i64 865, i64 863, i64 861, i64 859, i64 857, i64 855, i64 853, i64 851, i64 849, i64 848, i64 846, i64 844, i64 842, i64 840, i64 838, i64 836, i64 834, i64 832, i64 830, i64 828, i64 827, i64 825, i64 823, i64 821, i64 819, i64 817, i64 815, i64 813, i64 811, i64 809, i64 807, i64 806, i64 804, i64 802, i64 800, i64 798, i64 796, i64 794, i64 792, i64 790, i64 789, i64 787, i64 785, i64 783, i64 781, i64 779, i64 777, i64 775, i64 774, i64 772, i64 770, i64 768, i64 766, i64 764, i64 762, i64 760, i64 759, i64 757, i64 755, i64 753, i64 751, i64 749, i64 747, i64 746, i64 744, i64 742, i64 740, i64 738, i64 736, i64 734, i64 733, i64 731, i64 729, i64 727, i64 725, i64 723, i64 722, i64 720, i64 718, i64 716, i64 714, i64 712, i64 710, i64 709, i64 707, i64 705, i64 703, i64 701, i64 699, i64 698, i64 696, i64 694, i64 692, i64 690, i64 689, i64 687, i64 685, i64 683, i64 681, i64 679, i64 678, i64 676, i64 674, i64 672, i64 670, i64 669, i64 667, i64 665, i64 663, i64 661, i64 660, i64 658, i64 656, i64 654, i64 652, i64 651, i64 649, i64 647, i64 645, i64 643, i64 642, i64 640, i64 638, i64 636, i64 634, i64 633, i64 631, i64 629, i64 627, i64 625, i64 624, i64 622, i64 620, i64 618, i64 617, i64 615, i64 613, i64 611, i64 609, i64 608, i64 606, i64 604, i64 602, i64 601, i64 599, i64 597, i64 595, i64 594, i64 592, i64 590, i64 588, i64 586, i64 585, i64 583, i64 581, i64 579, i64 578, i64 576, i64 574, i64 572, i64 571, i64 569, i64 567, i64 565, i64 564, i64 562, i64 560, i64 558, i64 557, i64 555, i64 553, i64 551, i64 550, i64 548, i64 546, i64 545, i64 543, i64 541, i64 539, i64 538, i64 536, i64 534, i64 532, i64 531, i64 529, i64 527, i64 526, i64 524, i64 522, i64 520, i64 519, i64 517, i64 515, i64 513, i64 512, i64 510, i64 508, i64 507, i64 505, i64 503, i64 501, i64 500, i64 498, i64 496, i64 495, i64 493, i64 491, i64 490, i64 488, i64 486, i64 484, i64 483, i64 481, i64 479, i64 478, i64 476, i64 474, i64 473, i64 471, i64 469, i64 467, i64 466, i64 464, i64 462, i64 461, i64 459, i64 457, i64 456, i64 454, i64 452, i64 451, i64 449, i64 447, i64 446, i64 444, i64 442, i64 441, i64 439, i64 437, i64 436, i64 434, i64 432, i64 431, i64 429, i64 427, i64 426, i64 424, i64 422, i64 421, i64 419, i64 417, i64 416, i64 414, i64 412, i64 411, i64 409, i64 407, i64 406, i64 404, i64 402, i64 401, i64 399, i64 397, i64 396, i64 394, i64 392, i64 391, i64 389, i64 387, i64 386, i64 384, i64 383, i64 381, i64 379, i64 378, i64 376, i64 374, i64 373, i64 371, i64 369, i64 368, i64 366, i64 365, i64 363, i64 361, i64 360, i64 358, i64 356, i64 355, i64 353, i64 351, i64 350, i64 348, i64 347, i64 345, i64 343, i64 342, i64 340, i64 339, i64 337, i64 335, i64 334, i64 332, i64 330, i64 329, i64 327, i64 326, i64 324, i64 322, i64 321, i64 319, i64 318, i64 316, i64 314, i64 313, i64 311, i64 310, i64 308, i64 306, i64 305, i64 303, i64 302, i64 300, i64 298, i64 297, i64 295, i64 294, i64 292, i64 290, i64 289, i64 287, i64 286, i64 284, i64 282, i64 281, i64 279, i64 278, i64 276, i64 274, i64 273, i64 271, i64 270, i64 268, i64 267, i64 265, i64 263, i64 262, i64 260, i64 259, i64 257, i64 256, i64 254, i64 252, i64 251, i64 249, i64 248, i64 246, i64 245, i64 243, i64 241, i64 240, i64 238, i64 237, i64 235, i64 234, i64 232, i64 230, i64 229, i64 227, i64 226, i64 224, i64 223, i64 221, i64 220, i64 218, i64 216, i64 215, i64 213, i64 212, i64 210, i64 209, i64 207, i64 206, i64 204, i64 203, i64 201, i64 199, i64 198, i64 196, i64 195, i64 193, i64 192, i64 190, i64 189, i64 187, i64 186, i64 184, i64 183, i64 181, i64 179, i64 178, i64 176, i64 175, i64 173, i64 172, i64 170, i64 169, i64 167, i64 166, i64 164, i64 163, i64 161, i64 160, i64 158, i64 157, i64 155, i64 153, i64 152, i64 150, i64 149, i64 147, i64 146, i64 144, i64 143, i64 141, i64 140, i64 138, i64 137, i64 135, i64 134, i64 132, i64 131, i64 129, i64 128, i64 126, i64 125, i64 123, i64 122, i64 120, i64 119, i64 117, i64 116, i64 114, i64 113, i64 111, i64 110, i64 108, i64 107, i64 105, i64 104, i64 102, i64 101, i64 99, i64 98, i64 96, i64 95, i64 93, i64 92, i64 90, i64 89, i64 87, i64 86, i64 84, i64 83, i64 81, i64 80, i64 78, i64 77, i64 75, i64 74, i64 73, i64 71, i64 70, i64 68, i64 67, i64 65, i64 64, i64 62, i64 61, i64 59, i64 58, i64 56, i64 55, i64 53, i64 52, i64 50, i64 49, i64 47, i64 46, i64 45, i64 43, i64 42, i64 40, i64 39, i64 37, i64 36, i64 34, i64 33, i64 31, i64 30, i64 28, i64 27, i64 26, i64 24, i64 23, i64 21, i64 20, i64 18, i64 17, i64 15, i64 14, i64 13, i64 11, i64 10, i64 8, i64 7, i64 5, i64 4, i64 2, i64 1], align 16
@.str.21 = private unnamed_addr constant [23 x i8] c"could not write: %02x\0A\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"Error: only min_length = 2 is supported in substring_enumerator_callback\0A\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"Error: could not allocate memory in substring_enumerator_new\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"a < finder->size\00", align 1
@.str.25 = private unnamed_addr constant [114 x i8] c"/home/gabe/meta_agent/meta-harness-c-to-rust/assure/src/python/inputs-complex/megalania/src/top_k_packet_finder.c\00", align 1
@__PRETTY_FUNCTION__.top_k_entry_comparator = private unnamed_addr constant [63 x i8] c"int top_k_entry_comparator(void *, unsigned int, unsigned int)\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"b < finder->size\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"had_max\00", align 1
@__PRETTY_FUNCTION__.top_k_entry_finder_insert = private unnamed_addr constant [62 x i8] c"void top_k_entry_finder_insert(TopKPacketFinder *, TopKEntry)\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"maximum < finder->size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @file_write(%struct.OutputInterface_struct* noundef %output, i8* noundef %data, i64 noundef %data_size) #0 {
entry:
  %output.addr = alloca %struct.OutputInterface_struct*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %file = alloca %struct._IO_FILE*, align 8
  store %struct.OutputInterface_struct* %output, %struct.OutputInterface_struct** %output.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %private_data = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %0, i32 0, i32 1
  %1 = load i8*, i8** %private_data, align 8
  %2 = bitcast i8* %1 to %struct._IO_FILE*
  store %struct._IO_FILE* %2, %struct._IO_FILE** %file, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load i64, i64* %data_size.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call = call i64 @fwrite(i8* noundef %3, i64 noundef %4, i64 noundef 1, %struct._IO_FILE* noundef %5)
  %cmp = icmp eq i64 %call, 1
  ret i1 %cmp
}

declare dso_local i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_output_new(%struct.OutputInterface_struct* noundef %output, %struct._IO_FILE* noundef %file) #0 {
entry:
  %output.addr = alloca %struct.OutputInterface_struct*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct.OutputInterface_struct* %output, %struct.OutputInterface_struct** %output.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %write = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %0, i32 0, i32 0
  %write1 = bitcast {}** %write to i1 (%struct.OutputInterface_struct*, i8*, i64)**
  store i1 (%struct.OutputInterface_struct*, i8*, i64)* @file_write, i1 (%struct.OutputInterface_struct*, i8*, i64)** %write1, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = bitcast %struct._IO_FILE* %1 to i8*
  %3 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %private_data = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %3, i32 0, i32 1
  store i8* %2, i8** %private_data, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %__bsx) #0 {
entry:
  %__bsx.addr = alloca i16, align 2
  store i16 %__bsx, i16* %__bsx.addr, align 2
  %0 = load i16, i16* %__bsx.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 %shr, 255
  %1 = load i16, i16* %__bsx.addr, align 2
  %conv1 = zext i16 %1 to i32
  %and2 = and i32 %conv1, 255
  %shl = shl i32 %and2, 8
  %or = or i32 %and, %shl
  %conv3 = trunc i32 %or to i16
  ret i16 %conv3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bswap_32(i32 noundef %__bsx) #0 {
entry:
  %__bsx.addr = alloca i32, align 4
  store i32 %__bsx, i32* %__bsx.addr, align 4
  %0 = load i32, i32* %__bsx.addr, align 4
  %and = and i32 %0, -16777216
  %shr = lshr i32 %and, 24
  %1 = load i32, i32* %__bsx.addr, align 4
  %and1 = and i32 %1, 16711680
  %shr2 = lshr i32 %and1, 8
  %or = or i32 %shr, %shr2
  %2 = load i32, i32* %__bsx.addr, align 4
  %and3 = and i32 %2, 65280
  %shl = shl i32 %and3, 8
  %or4 = or i32 %or, %shl
  %3 = load i32, i32* %__bsx.addr, align 4
  %and5 = and i32 %3, 255
  %shl6 = shl i32 %and5, 24
  %or7 = or i32 %or4, %shl6
  ret i32 %or7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bswap_64(i64 noundef %__bsx) #0 {
entry:
  %__bsx.addr = alloca i64, align 8
  store i64 %__bsx, i64* %__bsx.addr, align 8
  %0 = load i64, i64* %__bsx.addr, align 8
  %and = and i64 %0, -72057594037927936
  %shr = lshr i64 %and, 56
  %1 = load i64, i64* %__bsx.addr, align 8
  %and1 = and i64 %1, 71776119061217280
  %shr2 = lshr i64 %and1, 40
  %or = or i64 %shr, %shr2
  %2 = load i64, i64* %__bsx.addr, align 8
  %and3 = and i64 %2, 280375465082880
  %shr4 = lshr i64 %and3, 24
  %or5 = or i64 %or, %shr4
  %3 = load i64, i64* %__bsx.addr, align 8
  %and6 = and i64 %3, 1095216660480
  %shr7 = lshr i64 %and6, 8
  %or8 = or i64 %or5, %shr7
  %4 = load i64, i64* %__bsx.addr, align 8
  %and9 = and i64 %4, 4278190080
  %shl = shl i64 %and9, 8
  %or10 = or i64 %or8, %shl
  %5 = load i64, i64* %__bsx.addr, align 8
  %and11 = and i64 %5, 16711680
  %shl12 = shl i64 %and11, 24
  %or13 = or i64 %or10, %shl12
  %6 = load i64, i64* %__bsx.addr, align 8
  %and14 = and i64 %6, 65280
  %shl15 = shl i64 %and14, 40
  %or16 = or i64 %or13, %shl15
  %7 = load i64, i64* %__bsx.addr, align 8
  %and17 = and i64 %7, 255
  %shl18 = shl i64 %and17, 56
  %or19 = or i64 %or16, %shl18
  ret i64 %or19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @__uint16_identity(i16 noundef zeroext %__x) #0 {
entry:
  %__x.addr = alloca i16, align 2
  store i16 %__x, i16* %__x.addr, align 2
  %0 = load i16, i16* %__x.addr, align 2
  ret i16 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %__x) #0 {
entry:
  %__x.addr = alloca i32, align 4
  store i32 %__x, i32* %__x.addr, align 4
  %0 = load i32, i32* %__x.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %__x) #0 {
entry:
  %__x.addr = alloca i64, align 8
  store i64 %__x, i64* %__x.addr, align 8
  %0 = load i64, i64* %__x.addr, align 8
  ret i64 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @lzma_encode_header_properties(%struct.LZMAState* noundef %lzma_state) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %p = alloca %struct.LZMAProperties*, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %properties = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %0, i32 0, i32 2
  store %struct.LZMAProperties* %properties, %struct.LZMAProperties** %p, align 8
  %1 = load %struct.LZMAProperties*, %struct.LZMAProperties** %p, align 8
  %pb = getelementptr inbounds %struct.LZMAProperties, %struct.LZMAProperties* %1, i32 0, i32 2
  %2 = load i8, i8* %pb, align 1
  %conv = zext i8 %2 to i32
  %mul = mul nsw i32 %conv, 5
  %3 = load %struct.LZMAProperties*, %struct.LZMAProperties** %p, align 8
  %lp = getelementptr inbounds %struct.LZMAProperties, %struct.LZMAProperties* %3, i32 0, i32 1
  %4 = load i8, i8* %lp, align 1
  %conv1 = zext i8 %4 to i32
  %add = add nsw i32 %mul, %conv1
  %mul2 = mul nsw i32 %add, 9
  %5 = load %struct.LZMAProperties*, %struct.LZMAProperties** %p, align 8
  %lc = getelementptr inbounds %struct.LZMAProperties, %struct.LZMAProperties* %5, i32 0, i32 0
  %6 = load i8, i8* %lc, align 1
  %conv3 = zext i8 %6 to i32
  %add4 = add nsw i32 %mul2, %conv3
  %conv5 = trunc i32 %add4 to i8
  ret i8 %conv5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_encode_header(%struct.LZMAState* noundef %lzma_state, %struct.OutputInterface_struct* noundef %output) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %output.addr = alloca %struct.OutputInterface_struct*, align 8
  %props = alloca i8, align 1
  %dictsize = alloca i32, align 4
  %outsize = alloca i64, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.OutputInterface_struct* %output, %struct.OutputInterface_struct** %output.addr, align 8
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %call = call zeroext i8 @lzma_encode_header_properties(%struct.LZMAState* noundef %0)
  store i8 %call, i8* %props, align 1
  %1 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %write = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %1, i32 0, i32 0
  %write1 = bitcast {}** %write to i1 (%struct.OutputInterface_struct*, i8*, i64)**
  %2 = load i1 (%struct.OutputInterface_struct*, i8*, i64)*, i1 (%struct.OutputInterface_struct*, i8*, i64)** %write1, align 8
  %3 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %call2 = call zeroext i1 %2(%struct.OutputInterface_struct* noundef %3, i8* noundef %props, i64 noundef 1)
  %call3 = call i32 @__uint32_identity(i32 noundef 4194304)
  store i32 %call3, i32* %dictsize, align 4
  %4 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %write4 = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %4, i32 0, i32 0
  %write5 = bitcast {}** %write4 to i1 (%struct.OutputInterface_struct*, i8*, i64)**
  %5 = load i1 (%struct.OutputInterface_struct*, i8*, i64)*, i1 (%struct.OutputInterface_struct*, i8*, i64)** %write5, align 8
  %6 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %7 = bitcast i32* %dictsize to i8*
  %call6 = call zeroext i1 %5(%struct.OutputInterface_struct* noundef %6, i8* noundef %7, i64 noundef 4)
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data_size = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %8, i32 0, i32 1
  %9 = load i64, i64* %data_size, align 8
  %conv = trunc i64 %9 to i32
  %call7 = call i32 @__uint32_identity(i32 noundef %conv)
  %conv8 = zext i32 %call7 to i64
  store i64 %conv8, i64* %outsize, align 8
  %10 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %write9 = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %10, i32 0, i32 0
  %write10 = bitcast {}** %write9 to i1 (%struct.OutputInterface_struct*, i8*, i64)**
  %11 = load i1 (%struct.OutputInterface_struct*, i8*, i64)*, i1 (%struct.OutputInterface_struct*, i8*, i64)** %write10, align 8
  %12 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %13 = bitcast i64* %outsize to i8*
  %call11 = call zeroext i1 %11(%struct.OutputInterface_struct* noundef %12, i8* noundef %13, i64 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lzma_packet_cmp(%struct.LZMAPacket* noundef %a, %struct.LZMAPacket* noundef %b) #0 {
entry:
  %a.addr = alloca %struct.LZMAPacket*, align 8
  %b.addr = alloca %struct.LZMAPacket*, align 8
  store %struct.LZMAPacket* %a, %struct.LZMAPacket** %a.addr, align 8
  store %struct.LZMAPacket* %b, %struct.LZMAPacket** %b.addr, align 8
  %0 = load %struct.LZMAPacket*, %struct.LZMAPacket** %a.addr, align 8
  %type = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %0, i32 0, i32 0
  %1 = load i8, i8* %type, align 4
  %conv = zext i8 %1 to i32
  %2 = load %struct.LZMAPacket*, %struct.LZMAPacket** %b.addr, align 8
  %type1 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %2, i32 0, i32 0
  %3 = load i8, i8* %type1, align 4
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.LZMAPacket*, %struct.LZMAPacket** %a.addr, align 8
  %len = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %4, i32 0, i32 2
  %5 = load i16, i16* %len, align 4
  %conv4 = zext i16 %5 to i32
  %6 = load %struct.LZMAPacket*, %struct.LZMAPacket** %b.addr, align 8
  %len5 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %6, i32 0, i32 2
  %7 = load i16, i16* %len5, align 4
  %conv6 = zext i16 %7 to i32
  %cmp7 = icmp eq i32 %conv4, %conv6
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load %struct.LZMAPacket*, %struct.LZMAPacket** %a.addr, align 8
  %dist = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %8, i32 0, i32 1
  %9 = load i32, i32* %dist, align 4
  %10 = load %struct.LZMAPacket*, %struct.LZMAPacket** %b.addr, align 8
  %dist9 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %10, i32 0, i32 1
  %11 = load i32, i32* %dist9, align 4
  %cmp10 = icmp eq i32 %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp10, %land.rhs ]
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i16 } @literal_packet() #0 {
entry:
  %retval = alloca %struct.LZMAPacket, align 4
  %retval.coerce = alloca { i64, i16 }, align 8
  %0 = bitcast %struct.LZMAPacket* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 getelementptr inbounds (%struct.LZMAPacket, %struct.LZMAPacket* @__const.literal_packet.packet, i32 0, i32 0), i64 12, i1 false)
  %1 = bitcast { i64, i16 }* %retval.coerce to i8*
  %2 = bitcast %struct.LZMAPacket* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load { i64, i16 }, { i64, i16 }* %retval.coerce, align 8
  ret { i64, i16 } %3
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i16 } @match_packet(i32 noundef %dist, i32 noundef %len) #0 {
entry:
  %retval = alloca %struct.LZMAPacket, align 4
  %dist.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %retval.coerce = alloca { i64, i16 }, align 8
  store i32 %dist, i32* %dist.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %type = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %retval, i32 0, i32 0
  store i8 2, i8* %type, align 4
  %dist1 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %retval, i32 0, i32 1
  %0 = load i32, i32* %dist.addr, align 4
  store i32 %0, i32* %dist1, align 4
  %len2 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %retval, i32 0, i32 2
  %1 = load i32, i32* %len.addr, align 4
  %conv = trunc i32 %1 to i16
  store i16 %conv, i16* %len2, align 4
  %2 = bitcast { i64, i16 }* %retval.coerce to i8*
  %3 = bitcast %struct.LZMAPacket* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load { i64, i16 }, { i64, i16 }* %retval.coerce, align 8
  ret { i64, i16 } %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i16 } @short_rep_packet() #0 {
entry:
  %retval = alloca %struct.LZMAPacket, align 4
  %retval.coerce = alloca { i64, i16 }, align 8
  %0 = bitcast %struct.LZMAPacket* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 getelementptr inbounds (%struct.LZMAPacket, %struct.LZMAPacket* @__const.short_rep_packet.packet, i32 0, i32 0), i64 12, i1 false)
  %1 = bitcast { i64, i16 }* %retval.coerce to i8*
  %2 = bitcast %struct.LZMAPacket* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = load { i64, i16 }, { i64, i16 }* %retval.coerce, align 8
  ret { i64, i16 } %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i16 } @long_rep_packet(i32 noundef %dist_index, i32 noundef %len) #0 {
entry:
  %retval = alloca %struct.LZMAPacket, align 4
  %dist_index.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %retval.coerce = alloca { i64, i16 }, align 8
  store i32 %dist_index, i32* %dist_index.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %type = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %retval, i32 0, i32 0
  store i8 4, i8* %type, align 4
  %dist = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %retval, i32 0, i32 1
  %0 = load i32, i32* %dist_index.addr, align 4
  store i32 %0, i32* %dist, align 4
  %len1 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %retval, i32 0, i32 2
  %1 = load i32, i32* %len.addr, align 4
  %conv = trunc i32 %1 to i16
  store i16 %conv, i16* %len1, align 4
  %2 = bitcast { i64, i16 }* %retval.coerce to i8*
  %3 = bitcast %struct.LZMAPacket* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 12, i1 false)
  %4 = load { i64, i16 }, { i64, i16 }* %retval.coerce, align 8
  ret { i64, i16 } %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_packet_header(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, %struct.LZMAPacketHeader* noundef %head) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %head.addr = alloca %struct.LZMAPacketHeader*, align 8
  %ctx_probs = alloca %struct.ContextStateProbabilityModel*, align 8
  %ctx_pos_bits = alloca i32, align 4
  %ctx_state1 = alloca i32, align 4
  %ctx_pos_state = alloca i32, align 4
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store %struct.LZMAPacketHeader* %head, %struct.LZMAPacketHeader** %head.addr, align 8
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %probs = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %0, i32 0, i32 5
  %ctx_state = getelementptr inbounds %struct.LZMAProbabilityModel, %struct.LZMAProbabilityModel* %probs, i32 0, i32 4
  store %struct.ContextStateProbabilityModel* %ctx_state, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  store i32 0, i32* %ctx_pos_bits, align 4
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %ctx_state2 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %1, i32 0, i32 3
  %2 = load i8, i8* %ctx_state2, align 1
  %conv = zext i8 %2 to i32
  store i32 %conv, i32* %ctx_state1, align 4
  %3 = load i32, i32* %ctx_state1, align 4
  %shl = shl i32 %3, 4
  %4 = load i32, i32* %ctx_pos_bits, align 4
  %add = add i32 %shl, %4
  store i32 %add, i32* %ctx_pos_state, align 4
  %5 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %match = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %5, i32 0, i32 0
  %6 = load i8, i8* %match, align 1
  %tobool = trunc i8 %6 to i1
  %7 = load %struct.ContextStateProbabilityModel*, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  %is_match = getelementptr inbounds %struct.ContextStateProbabilityModel, %struct.ContextStateProbabilityModel* %7, i32 0, i32 0
  %8 = load i32, i32* %ctx_pos_state, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [192 x i16], [192 x i16]* %is_match, i64 0, i64 %idxprom
  %9 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool, i16* noundef %arrayidx, %struct.EncoderInterface_struct* noundef %9)
  %10 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %match3 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %10, i32 0, i32 0
  %11 = load i8, i8* %match3, align 1
  %tobool4 = trunc i8 %11 to i1
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end32

if.end:                                           ; preds = %entry
  %12 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %rep = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %12, i32 0, i32 1
  %13 = load i8, i8* %rep, align 1
  %tobool5 = trunc i8 %13 to i1
  %14 = load %struct.ContextStateProbabilityModel*, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  %is_rep = getelementptr inbounds %struct.ContextStateProbabilityModel, %struct.ContextStateProbabilityModel* %14, i32 0, i32 1
  %15 = load i32, i32* %ctx_state1, align 4
  %idxprom6 = zext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [12 x i16], [12 x i16]* %is_rep, i64 0, i64 %idxprom6
  %16 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool5, i16* noundef %arrayidx7, %struct.EncoderInterface_struct* noundef %16)
  %17 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %rep8 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %17, i32 0, i32 1
  %18 = load i8, i8* %rep8, align 1
  %tobool9 = trunc i8 %18 to i1
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  br label %if.end32

if.end11:                                         ; preds = %if.end
  %19 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %b3 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %19, i32 0, i32 2
  %20 = load i8, i8* %b3, align 1
  %tobool12 = trunc i8 %20 to i1
  %21 = load %struct.ContextStateProbabilityModel*, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  %is_rep_g0 = getelementptr inbounds %struct.ContextStateProbabilityModel, %struct.ContextStateProbabilityModel* %21, i32 0, i32 2
  %22 = load i32, i32* %ctx_state1, align 4
  %idxprom13 = zext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds [12 x i16], [12 x i16]* %is_rep_g0, i64 0, i64 %idxprom13
  %23 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool12, i16* noundef %arrayidx14, %struct.EncoderInterface_struct* noundef %23)
  %24 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %b315 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %24, i32 0, i32 2
  %25 = load i8, i8* %b315, align 1
  %tobool16 = trunc i8 %25 to i1
  br i1 %tobool16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end11
  %26 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %b4 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %26, i32 0, i32 3
  %27 = load i8, i8* %b4, align 1
  %tobool18 = trunc i8 %27 to i1
  %28 = load %struct.ContextStateProbabilityModel*, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  %is_rep_g1 = getelementptr inbounds %struct.ContextStateProbabilityModel, %struct.ContextStateProbabilityModel* %28, i32 0, i32 3
  %29 = load i32, i32* %ctx_state1, align 4
  %idxprom19 = zext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds [12 x i16], [12 x i16]* %is_rep_g1, i64 0, i64 %idxprom19
  %30 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool18, i16* noundef %arrayidx20, %struct.EncoderInterface_struct* noundef %30)
  %31 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %b421 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %31, i32 0, i32 3
  %32 = load i8, i8* %b421, align 1
  %tobool22 = trunc i8 %32 to i1
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then17
  %33 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %b5 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %33, i32 0, i32 4
  %34 = load i8, i8* %b5, align 1
  %tobool24 = trunc i8 %34 to i1
  %35 = load %struct.ContextStateProbabilityModel*, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  %is_rep_g2 = getelementptr inbounds %struct.ContextStateProbabilityModel, %struct.ContextStateProbabilityModel* %35, i32 0, i32 4
  %36 = load i32, i32* %ctx_state1, align 4
  %idxprom25 = zext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds [12 x i16], [12 x i16]* %is_rep_g2, i64 0, i64 %idxprom25
  %37 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool24, i16* noundef %arrayidx26, %struct.EncoderInterface_struct* noundef %37)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then17
  br label %if.end32

if.else:                                          ; preds = %if.end11
  %38 = load %struct.LZMAPacketHeader*, %struct.LZMAPacketHeader** %head.addr, align 8
  %b428 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %38, i32 0, i32 3
  %39 = load i8, i8* %b428, align 1
  %tobool29 = trunc i8 %39 to i1
  %40 = load %struct.ContextStateProbabilityModel*, %struct.ContextStateProbabilityModel** %ctx_probs, align 8
  %is_rep0_long = getelementptr inbounds %struct.ContextStateProbabilityModel, %struct.ContextStateProbabilityModel* %40, i32 0, i32 5
  %41 = load i32, i32* %ctx_pos_state, align 4
  %idxprom30 = zext i32 %41 to i64
  %arrayidx31 = getelementptr inbounds [192 x i16], [192 x i16]* %is_rep0_long, i64 0, i64 %idxprom30
  %42 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool29, i16* noundef %arrayidx31, %struct.EncoderInterface_struct* noundef %42)
  br label %if.end32

if.end32:                                         ; preds = %if.then, %if.then10, %if.else, %if.end27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_bit(i1 noundef zeroext %bit, i16* noundef %prob, %struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %bit.addr = alloca i8, align 1
  %prob.addr = alloca i16*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %v = alloca i32, align 4
  %frombool = zext i1 %bit to i8
  store i8 %frombool, i8* %bit.addr, align 1
  store i16* %prob, i16** %prob.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %encode_bit = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 0
  %1 = load void (%struct.EncoderInterface_struct*, i1, i16)*, void (%struct.EncoderInterface_struct*, i1, i16)** %encode_bit, align 8
  %2 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %3 = load i8, i8* %bit.addr, align 1
  %tobool = trunc i8 %3 to i1
  %4 = load i16*, i16** %prob.addr, align 8
  %5 = load i16, i16* %4, align 2
  call void %1(%struct.EncoderInterface_struct* noundef %2, i1 noundef zeroext %tobool, i16 noundef zeroext %5)
  %6 = load i16*, i16** %prob.addr, align 8
  %7 = load i16, i16* %6, align 2
  %conv = zext i16 %7 to i32
  store i32 %conv, i32* %v, align 4
  %8 = load i8, i8* %bit.addr, align 1
  %tobool1 = trunc i8 %8 to i1
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %v, align 4
  %shr = lshr i32 %9, 5
  %10 = load i32, i32* %v, align 4
  %sub = sub i32 %10, %shr
  store i32 %sub, i32* %v, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %v, align 4
  %sub2 = sub i32 2048, %11
  %shr3 = lshr i32 %sub2, 5
  %12 = load i32, i32* %v, align 4
  %add = add i32 %12, %shr3
  store i32 %add, i32* %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, i32* %v, align 4
  %conv4 = trunc i32 %13 to i16
  %14 = load i16*, i16** %prob.addr, align 8
  store i16 %conv4, i16* %14, align 2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_length(%struct.LengthProbabilityModel* noundef %probs, %struct.EncoderInterface_struct* noundef %enc, i32 noundef %len) #0 {
entry:
  %probs.addr = alloca %struct.LengthProbabilityModel*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %len.addr = alloca i32, align 4
  %ctx_pos_bits = alloca i32, align 4
  store %struct.LengthProbabilityModel* %probs, %struct.LengthProbabilityModel** %probs.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %ctx_pos_bits, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp uge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32 noundef 45, i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.lzma_encode_length, i64 0, i64 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %1, 2
  store i32 %sub, i32* %len.addr, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp1 = icmp ult i32 %2, 8
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  %3 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %choice_1 = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %3, i32 0, i32 0
  %4 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext false, i16* noundef %choice_1, %struct.EncoderInterface_struct* noundef %4)
  %5 = load i32, i32* %len.addr, align 4
  %6 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %low_coder = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %6, i32 0, i32 2
  %7 = load i32, i32* %ctx_pos_bits, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds [16 x [8 x i16]], [16 x [8 x i16]]* %low_coder, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx, i64 0, i64 0
  %8 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree(i32 noundef %5, i16* noundef %arraydecay, i64 noundef 3, %struct.EncoderInterface_struct* noundef %8)
  br label %if.end16

if.else3:                                         ; preds = %if.end
  %9 = load i32, i32* %len.addr, align 4
  %sub4 = sub i32 %9, 8
  store i32 %sub4, i32* %len.addr, align 4
  %10 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %choice_15 = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %10, i32 0, i32 0
  %11 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext true, i16* noundef %choice_15, %struct.EncoderInterface_struct* noundef %11)
  %12 = load i32, i32* %len.addr, align 4
  %cmp6 = icmp ult i32 %12, 8
  br i1 %cmp6, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else3
  %13 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %choice_2 = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %13, i32 0, i32 1
  %14 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext false, i16* noundef %choice_2, %struct.EncoderInterface_struct* noundef %14)
  %15 = load i32, i32* %len.addr, align 4
  %16 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %mid_coder = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %16, i32 0, i32 3
  %17 = load i32, i32* %ctx_pos_bits, align 4
  %idxprom8 = zext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [16 x [8 x i16]], [16 x [8 x i16]]* %mid_coder, i64 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [8 x i16], [8 x i16]* %arrayidx9, i64 0, i64 0
  %18 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree(i32 noundef %15, i16* noundef %arraydecay10, i64 noundef 3, %struct.EncoderInterface_struct* noundef %18)
  br label %if.end15

if.else11:                                        ; preds = %if.else3
  %19 = load i32, i32* %len.addr, align 4
  %sub12 = sub i32 %19, 8
  store i32 %sub12, i32* %len.addr, align 4
  %20 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %choice_213 = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %20, i32 0, i32 1
  %21 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext true, i16* noundef %choice_213, %struct.EncoderInterface_struct* noundef %21)
  %22 = load i32, i32* %len.addr, align 4
  %23 = load %struct.LengthProbabilityModel*, %struct.LengthProbabilityModel** %probs.addr, align 8
  %high_coder = getelementptr inbounds %struct.LengthProbabilityModel, %struct.LengthProbabilityModel* %23, i32 0, i32 4
  %arraydecay14 = getelementptr inbounds [256 x i16], [256 x i16]* %high_coder, i64 0, i64 0
  %24 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree(i32 noundef %22, i16* noundef %arraydecay14, i64 noundef 8, %struct.EncoderInterface_struct* noundef %24)
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then2
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_bit_tree(i32 noundef %bits, i16* noundef %probs, i64 noundef %num_bits, %struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %probs.addr = alloca i16*, align 8
  %num_bits.addr = alloca i64, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %m = alloca i32, align 4
  %bit_index = alloca i32, align 4
  %bit = alloca i32, align 4
  store i32 %bits, i32* %bits.addr, align 4
  store i16* %probs, i16** %probs.addr, align 8
  store i64 %num_bits, i64* %num_bits.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 1, i32* %m, align 4
  %0 = load i64, i64* %num_bits.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %bit_index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, i32* %bit_index, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bit_index, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %bit_index, align 4
  %3 = load i32, i32* %bits.addr, align 4
  %4 = load i32, i32* %bit_index, align 4
  %shr = lshr i32 %3, %4
  %and = and i32 %shr, 1
  store i32 %and, i32* %bit, align 4
  %5 = load i32, i32* %bit, align 4
  %tobool = icmp ne i32 %5, 0
  %6 = load i16*, i16** %probs.addr, align 8
  %7 = load i32, i32* %m, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %8 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool, i16* noundef %arrayidx, %struct.EncoderInterface_struct* noundef %8)
  %9 = load i32, i32* %m, align 4
  %shl = shl i32 %9, 1
  %10 = load i32, i32* %bit, align 4
  %or = or i32 %shl, %10
  store i32 %or, i32* %m, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msb32(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %1 = call i32 @llvm.ctlz.i32(i32 %0, i1 true)
  %sub = sub nsw i32 32, %1
  ret i32 %sub
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_distance(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, i32 noundef %dist, i32 noundef %len) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %dist.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %len_ctx = alloca i32, align 4
  %probs = alloca %struct.DistanceProbabilityModel*, align 8
  %num_low_bits = alloca i32, align 4
  %low_bits = alloca i32, align 4
  %high_bits = alloca i32, align 4
  %pos_slot = alloca i32, align 4
  %pos_coder_ctx = alloca i32, align 4
  %num_direct_bits = alloca i32, align 4
  %direct_bits = alloca i32, align 4
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 %dist, i32* %dist.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %sub = sub i32 %0, 2
  store i32 %sub, i32* %len_ctx, align 4
  %1 = load i32, i32* %len_ctx, align 4
  %cmp = icmp uge i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 3, i32* %len_ctx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %probs1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %2, i32 0, i32 5
  %dist2 = getelementptr inbounds %struct.LZMAProbabilityModel, %struct.LZMAProbabilityModel* %probs1, i32 0, i32 3
  store %struct.DistanceProbabilityModel* %dist2, %struct.DistanceProbabilityModel** %probs, align 8
  %3 = load i32, i32* %dist.addr, align 4
  %cmp3 = icmp ult i32 %3, 4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %dist.addr, align 4
  %5 = load %struct.DistanceProbabilityModel*, %struct.DistanceProbabilityModel** %probs, align 8
  %pos_slot_coder = getelementptr inbounds %struct.DistanceProbabilityModel, %struct.DistanceProbabilityModel* %5, i32 0, i32 0
  %6 = load i32, i32* %len_ctx, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %pos_slot_coder, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx, i64 0, i64 0
  %7 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree(i32 noundef %4, i16* noundef %arraydecay, i64 noundef 6, %struct.EncoderInterface_struct* noundef %7)
  br label %return

if.end5:                                          ; preds = %if.end
  %8 = load i32, i32* %dist.addr, align 4
  %call = call i32 @get_msb32(i32 noundef %8)
  %sub6 = sub i32 %call, 2
  store i32 %sub6, i32* %num_low_bits, align 4
  %9 = load i32, i32* %dist.addr, align 4
  %10 = load i32, i32* %num_low_bits, align 4
  %shl = shl i32 1, %10
  %sub7 = sub nsw i32 %shl, 1
  %and = and i32 %9, %sub7
  store i32 %and, i32* %low_bits, align 4
  %11 = load i32, i32* %dist.addr, align 4
  %12 = load i32, i32* %num_low_bits, align 4
  %shr = lshr i32 %11, %12
  store i32 %shr, i32* %high_bits, align 4
  %13 = load i32, i32* %num_low_bits, align 4
  %mul = mul i32 %13, 2
  %14 = load i32, i32* %high_bits, align 4
  %add = add i32 %mul, %14
  store i32 %add, i32* %pos_slot, align 4
  %15 = load i32, i32* %pos_slot, align 4
  %16 = load %struct.DistanceProbabilityModel*, %struct.DistanceProbabilityModel** %probs, align 8
  %pos_slot_coder8 = getelementptr inbounds %struct.DistanceProbabilityModel, %struct.DistanceProbabilityModel* %16, i32 0, i32 0
  %17 = load i32, i32* %len_ctx, align 4
  %idxprom9 = zext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [4 x [64 x i16]], [4 x [64 x i16]]* %pos_slot_coder8, i64 0, i64 %idxprom9
  %arraydecay11 = getelementptr inbounds [64 x i16], [64 x i16]* %arrayidx10, i64 0, i64 0
  %18 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree(i32 noundef %15, i16* noundef %arraydecay11, i64 noundef 6, %struct.EncoderInterface_struct* noundef %18)
  %19 = load i32, i32* %pos_slot, align 4
  %cmp12 = icmp ult i32 %19, 14
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end5
  %20 = load i32, i32* %high_bits, align 4
  %21 = load i32, i32* %num_low_bits, align 4
  %shl14 = shl i32 %20, %21
  %22 = load i32, i32* %pos_slot, align 4
  %sub15 = sub i32 %shl14, %22
  store i32 %sub15, i32* %pos_coder_ctx, align 4
  %23 = load i32, i32* %low_bits, align 4
  %24 = load %struct.DistanceProbabilityModel*, %struct.DistanceProbabilityModel** %probs, align 8
  %pos_coder = getelementptr inbounds %struct.DistanceProbabilityModel, %struct.DistanceProbabilityModel* %24, i32 0, i32 2
  %arraydecay16 = getelementptr inbounds [115 x i16], [115 x i16]* %pos_coder, i64 0, i64 0
  %25 = load i32, i32* %pos_coder_ctx, align 4
  %idx.ext = zext i32 %25 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay16, i64 %idx.ext
  %26 = load i32, i32* %num_low_bits, align 4
  %conv = zext i32 %26 to i64
  %27 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree_reverse(i32 noundef %23, i16* noundef %add.ptr, i64 noundef %conv, %struct.EncoderInterface_struct* noundef %27)
  br label %return

if.end17:                                         ; preds = %if.end5
  %28 = load i32, i32* %num_low_bits, align 4
  %sub18 = sub i32 %28, 4
  store i32 %sub18, i32* %num_direct_bits, align 4
  store i32 4, i32* %num_low_bits, align 4
  %29 = load i32, i32* %low_bits, align 4
  %shr19 = lshr i32 %29, 4
  store i32 %shr19, i32* %direct_bits, align 4
  %30 = load i32, i32* %low_bits, align 4
  %31 = load i32, i32* %num_low_bits, align 4
  %shl20 = shl i32 1, %31
  %sub21 = sub nsw i32 %shl20, 1
  %and22 = and i32 %30, %sub21
  store i32 %and22, i32* %low_bits, align 4
  %32 = load i32, i32* %direct_bits, align 4
  %33 = load i32, i32* %num_direct_bits, align 4
  %conv23 = zext i32 %33 to i64
  %34 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_direct_bits(i32 noundef %32, i64 noundef %conv23, %struct.EncoderInterface_struct* noundef %34)
  %35 = load i32, i32* %low_bits, align 4
  %36 = load %struct.DistanceProbabilityModel*, %struct.DistanceProbabilityModel** %probs, align 8
  %align_coder = getelementptr inbounds %struct.DistanceProbabilityModel, %struct.DistanceProbabilityModel* %36, i32 0, i32 1
  %arraydecay24 = getelementptr inbounds [16 x i16], [16 x i16]* %align_coder, i64 0, i64 0
  %37 = load i32, i32* %num_low_bits, align 4
  %conv25 = zext i32 %37 to i64
  %38 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit_tree_reverse(i32 noundef %35, i16* noundef %arraydecay24, i64 noundef %conv25, %struct.EncoderInterface_struct* noundef %38)
  br label %return

return:                                           ; preds = %if.end17, %if.then13, %if.then4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_bit_tree_reverse(i32 noundef %bits, i16* noundef %probs, i64 noundef %num_bits, %struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %probs.addr = alloca i16*, align 8
  %num_bits.addr = alloca i64, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %bit = alloca i32, align 4
  store i32 %bits, i32* %bits.addr, align 4
  store i16* %probs, i16** %probs.addr, align 8
  store i64 %num_bits, i64* %num_bits.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 1, i32* %m, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %1 = load i64, i64* %num_bits.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bits.addr, align 4
  %and = and i32 %2, 1
  store i32 %and, i32* %bit, align 4
  %3 = load i32, i32* %bit, align 4
  %tobool = icmp ne i32 %3, 0
  %4 = load i16*, i16** %probs.addr, align 8
  %5 = load i32, i32* %m, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %6 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool, i16* noundef %arrayidx, %struct.EncoderInterface_struct* noundef %6)
  %7 = load i32, i32* %m, align 4
  %shl = shl i32 %7, 1
  %8 = load i32, i32* %bit, align 4
  %or = or i32 %shl, %8
  store i32 %or, i32* %m, align 4
  %9 = load i32, i32* %bits.addr, align 4
  %shr = lshr i32 %9, 1
  store i32 %shr, i32* %bits.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_direct_bits(i32 noundef %bits, i64 noundef %num_bits, %struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %num_bits.addr = alloca i64, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store i64 %num_bits, i64* %num_bits.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %encode_direct_bits = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 1
  %1 = load void (%struct.EncoderInterface_struct*, i32, i32)*, void (%struct.EncoderInterface_struct*, i32, i32)** %encode_direct_bits, align 8
  %2 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %3 = load i32, i32* %bits.addr, align 4
  %4 = load i64, i64* %num_bits.addr, align 8
  %conv = trunc i64 %4 to i32
  call void %1(%struct.EncoderInterface_struct* noundef %2, i32 noundef %3, i32 noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_literal(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %head = alloca %struct.LZMAPacketHeader, align 1
  %probs = alloca %struct.LZMAProbabilityModel*, align 8
  %symbol = alloca i32, align 4
  %lit_ctx = alloca i32, align 4
  %lit_probs = alloca i16*, align 8
  %lit2 = alloca i8, align 1
  %matched = alloca i8, align 1
  %match_byte = alloca i8, align 1
  %i = alloca i32, align 4
  %bit = alloca i8, align 1
  %context = alloca i32, align 4
  %match_bit = alloca i32, align 4
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %0 = bitcast %struct.LZMAPacketHeader* %head to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 5, i1 false)
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %2 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @lzma_encode_packet_header(%struct.LZMAState* noundef %1, %struct.EncoderInterface_struct* noundef %2, %struct.LZMAPacketHeader* noundef %head)
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %probs1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %3, i32 0, i32 5
  store %struct.LZMAProbabilityModel* %probs1, %struct.LZMAProbabilityModel** %probs, align 8
  store i32 1, i32* %symbol, align 4
  store i32 0, i32* %lit_ctx, align 4
  %4 = load %struct.LZMAProbabilityModel*, %struct.LZMAProbabilityModel** %probs, align 8
  %lit = getelementptr inbounds %struct.LZMAProbabilityModel, %struct.LZMAProbabilityModel* %4, i32 0, i32 0
  %5 = load i32, i32* %lit_ctx, align 4
  %mul = mul i32 768, %5
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds [768 x i16], [768 x i16]* %lit, i64 0, i64 %idxprom
  store i16* %arrayidx, i16** %lit_probs, align 8
  %6 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %8, i32 0, i32 6
  %9 = load i64, i64* %position, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %9
  %10 = load i8, i8* %arrayidx3, align 1
  store i8 %10, i8* %lit2, align 1
  %11 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %ctx_state = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %11, i32 0, i32 3
  %12 = load i8, i8* %ctx_state, align 1
  %conv = zext i8 %12 to i32
  %cmp = icmp sge i32 %conv, 7
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %matched, align 1
  store i8 0, i8* %match_byte, align 1
  %13 = load i8, i8* %matched, align 1
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data5 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %14, i32 0, i32 0
  %15 = load i8*, i8** %data5, align 8
  %16 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position6 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %16, i32 0, i32 6
  %17 = load i64, i64* %position6, align 8
  %18 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %18, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 0
  %19 = load i32, i32* %arrayidx7, align 4
  %conv8 = zext i32 %19 to i64
  %sub = sub i64 %17, %conv8
  %sub9 = sub i64 %sub, 1
  %arrayidx10 = getelementptr inbounds i8, i8* %15, i64 %sub9
  %20 = load i8, i8* %arrayidx10, align 1
  store i8 %20, i8* %match_byte, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %21 = load i32, i32* %i, align 4
  %cmp11 = icmp sge i32 %21, 0
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8, i8* %lit2, align 1
  %conv13 = zext i8 %22 to i32
  %23 = load i32, i32* %i, align 4
  %shr = ashr i32 %conv13, %23
  %and = and i32 %shr, 1
  %tobool14 = icmp ne i32 %and, 0
  %frombool15 = zext i1 %tobool14 to i8
  store i8 %frombool15, i8* %bit, align 1
  %24 = load i32, i32* %symbol, align 4
  store i32 %24, i32* %context, align 4
  %25 = load i8, i8* %matched, align 1
  %tobool16 = trunc i8 %25 to i1
  br i1 %tobool16, label %if.then17, label %if.end27

if.then17:                                        ; preds = %for.body
  %26 = load i8, i8* %match_byte, align 1
  %conv18 = zext i8 %26 to i32
  %27 = load i32, i32* %i, align 4
  %shr19 = ashr i32 %conv18, %27
  %and20 = and i32 %shr19, 1
  store i32 %and20, i32* %match_bit, align 4
  %28 = load i32, i32* %match_bit, align 4
  %add = add nsw i32 1, %28
  %shl = shl i32 %add, 8
  %29 = load i32, i32* %context, align 4
  %add21 = add i32 %29, %shl
  store i32 %add21, i32* %context, align 4
  %30 = load i32, i32* %match_bit, align 4
  %31 = load i8, i8* %bit, align 1
  %tobool22 = trunc i8 %31 to i1
  %conv23 = zext i1 %tobool22 to i32
  %cmp24 = icmp eq i32 %30, %conv23
  %frombool26 = zext i1 %cmp24 to i8
  store i8 %frombool26, i8* %matched, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then17, %for.body
  %32 = load i8, i8* %bit, align 1
  %tobool28 = trunc i8 %32 to i1
  %33 = load i16*, i16** %lit_probs, align 8
  %34 = load i32, i32* %context, align 4
  %idxprom29 = zext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds i16, i16* %33, i64 %idxprom29
  %35 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @encode_bit(i1 noundef zeroext %tobool28, i16* noundef %arrayidx30, %struct.EncoderInterface_struct* noundef %35)
  %36 = load i32, i32* %symbol, align 4
  %shl31 = shl i32 %36, 1
  %37 = load i8, i8* %bit, align 1
  %tobool32 = trunc i8 %37 to i1
  %conv33 = zext i1 %tobool32 to i32
  %or = or i32 %shl31, %conv33
  store i32 %or, i32* %symbol, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %38 = load i32, i32* %i, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_match(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, i32 noundef %dist, i32 noundef %len) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %dist.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %head = alloca %struct.LZMAPacketHeader, align 1
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 %dist, i32* %dist.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = bitcast %struct.LZMAPacketHeader* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds (%struct.LZMAPacketHeader, %struct.LZMAPacketHeader* @__const.lzma_encode_match.head, i32 0, i32 0), i64 5, i1 false)
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %2 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @lzma_encode_packet_header(%struct.LZMAState* noundef %1, %struct.EncoderInterface_struct* noundef %2, %struct.LZMAPacketHeader* noundef %head)
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %4 = load i32, i32* %dist.addr, align 4
  call void @lzma_state_push_distance(%struct.LZMAState* noundef %3, i32 noundef %4)
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %probs = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %5, i32 0, i32 5
  %len1 = getelementptr inbounds %struct.LZMAProbabilityModel, %struct.LZMAProbabilityModel* %probs, i32 0, i32 1
  %6 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %7 = load i32, i32* %len.addr, align 4
  call void @lzma_encode_length(%struct.LengthProbabilityModel* noundef %len1, %struct.EncoderInterface_struct* noundef %6, i32 noundef %7)
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %9 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %10 = load i32, i32* %dist.addr, align 4
  %11 = load i32, i32* %len.addr, align 4
  call void @lzma_encode_distance(%struct.LZMAState* noundef %8, %struct.EncoderInterface_struct* noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_state_push_distance(%struct.LZMAState* noundef %lzma_state, i32 noundef %dist) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %dist.addr = alloca i32, align 4
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store i32 %dist, i32* %dist.addr, align 4
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %0, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 2
  %1 = load i32, i32* %arrayidx, align 4
  %2 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %2, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %dists1, i64 0, i64 3
  store i32 %1, i32* %arrayidx2, align 4
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists3 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %3, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %dists3, i64 0, i64 1
  %4 = load i32, i32* %arrayidx4, align 4
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists5 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %5, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %dists5, i64 0, i64 2
  store i32 %4, i32* %arrayidx6, align 4
  %6 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists7 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %6, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %dists7, i64 0, i64 0
  %7 = load i32, i32* %arrayidx8, align 4
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists9 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %8, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %dists9, i64 0, i64 1
  store i32 %7, i32* %arrayidx10, align 4
  %9 = load i32, i32* %dist.addr, align 4
  %10 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists11 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %10, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %dists11, i64 0, i64 0
  store i32 %9, i32* %arrayidx12, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_short_rep(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %head = alloca %struct.LZMAPacketHeader, align 1
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %0 = bitcast %struct.LZMAPacketHeader* %head to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds (%struct.LZMAPacketHeader, %struct.LZMAPacketHeader* @__const.lzma_encode_short_rep.head, i32 0, i32 0), i64 5, i1 false)
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %2 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @lzma_encode_packet_header(%struct.LZMAState* noundef %1, %struct.EncoderInterface_struct* noundef %2, %struct.LZMAPacketHeader* noundef %head)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_encode_long_rep(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, i32 noundef %dist_index, i32 noundef %len) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %dist_index.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %head = alloca %struct.LZMAPacketHeader, align 1
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 %dist_index, i32* %dist_index.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %match = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %head, i32 0, i32 0
  store i8 1, i8* %match, align 1
  %rep = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %head, i32 0, i32 1
  store i8 1, i8* %rep, align 1
  %b3 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %head, i32 0, i32 2
  %0 = load i32, i32* %dist_index.addr, align 4
  %cmp = icmp ne i32 %0, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %b3, align 1
  %b4 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %head, i32 0, i32 3
  %1 = load i32, i32* %dist_index.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  %frombool2 = zext i1 %cmp1 to i8
  store i8 %frombool2, i8* %b4, align 1
  %b5 = getelementptr inbounds %struct.LZMAPacketHeader, %struct.LZMAPacketHeader* %head, i32 0, i32 4
  %2 = load i32, i32* %dist_index.addr, align 4
  %cmp3 = icmp ne i32 %2, 2
  %frombool4 = zext i1 %cmp3 to i8
  store i8 %frombool4, i8* %b5, align 1
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %4 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @lzma_encode_packet_header(%struct.LZMAState* noundef %3, %struct.EncoderInterface_struct* noundef %4, %struct.LZMAPacketHeader* noundef %head)
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %6 = load i32, i32* %dist_index.addr, align 4
  call void @lzma_state_promote_distance_at(%struct.LZMAState* noundef %5, i32 noundef %6)
  %7 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %probs = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %7, i32 0, i32 5
  %rep_len = getelementptr inbounds %struct.LZMAProbabilityModel, %struct.LZMAProbabilityModel* %probs, i32 0, i32 2
  %8 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %9 = load i32, i32* %len.addr, align 4
  call void @lzma_encode_length(%struct.LengthProbabilityModel* noundef %rep_len, %struct.EncoderInterface_struct* noundef %8, i32 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_state_promote_distance_at(%struct.LZMAState* noundef %lzma_state, i32 noundef %dist_index) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %dist_index.addr = alloca i32, align 4
  %dist = alloca i32, align 4
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store i32 %dist_index, i32* %dist_index.addr, align 4
  %0 = load i32, i32* %dist_index.addr, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.lzma_state_promote_distance_at, i64 0, i64 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %1, i32 0, i32 4
  %2 = load i32, i32* %dist_index.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %dist, align 4
  %4 = load i32, i32* %dist_index.addr, align 4
  %cmp1 = icmp ugt i32 %4, 2
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists3 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %5, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %dists3, i64 0, i64 2
  %6 = load i32, i32* %arrayidx4, align 4
  %7 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists5 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %7, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %dists5, i64 0, i64 3
  store i32 %6, i32* %arrayidx6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %8 = load i32, i32* %dist_index.addr, align 4
  %cmp8 = icmp ugt i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end7
  %9 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists10 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %9, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %dists10, i64 0, i64 1
  %10 = load i32, i32* %arrayidx11, align 4
  %11 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists12 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %11, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %dists12, i64 0, i64 2
  store i32 %10, i32* %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end7
  %12 = load i32, i32* %dist_index.addr, align 4
  %cmp15 = icmp ugt i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %13 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists17 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %13, i32 0, i32 4
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %dists17, i64 0, i64 0
  %14 = load i32, i32* %arrayidx18, align 4
  %15 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists19 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %15, i32 0, i32 4
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %dists19, i64 0, i64 1
  store i32 %14, i32* %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  %16 = load i32, i32* %dist, align 4
  %17 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists22 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %17, i32 0, i32 4
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %dists22, i64 0, i64 0
  store i32 %16, i32* %arrayidx23, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_encode_packet(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, i64 %packet.coerce0, i16 %packet.coerce1) #0 {
entry:
  %packet = alloca %struct.LZMAPacket, align 4
  %coerce = alloca { i64, i16 }, align 4
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %type = alloca i32, align 4
  %len = alloca i32, align 4
  %dist = alloca i32, align 4
  %0 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 0
  store i64 %packet.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 1
  store i16 %packet.coerce1, i16* %1, align 4
  %2 = bitcast %struct.LZMAPacket* %packet to i8*
  %3 = bitcast { i64, i16 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %type1 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %packet, i32 0, i32 0
  %4 = load i8, i8* %type1, align 4
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %type, align 4
  %len2 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %packet, i32 0, i32 2
  %5 = load i16, i16* %len2, align 4
  %conv3 = zext i16 %5 to i32
  store i32 %conv3, i32* %len, align 4
  %dist4 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %packet, i32 0, i32 1
  %6 = load i32, i32* %dist4, align 4
  store i32 %6, i32* %dist, align 4
  %7 = load i32, i32* %type, align 4
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 0, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %9 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @lzma_encode_literal(%struct.LZMAState* noundef %8, %struct.EncoderInterface_struct* noundef %9)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %10 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %11 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %12 = load i32, i32* %dist, align 4
  %13 = load i32, i32* %len, align 4
  call void @lzma_encode_match(%struct.LZMAState* noundef %10, %struct.EncoderInterface_struct* noundef %11, i32 noundef %12, i32 noundef %13)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %14 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %15 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @lzma_encode_short_rep(%struct.LZMAState* noundef %14, %struct.EncoderInterface_struct* noundef %15)
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %16 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %17 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %18 = load i32, i32* %dist, align 4
  %19 = load i32, i32* %len, align 4
  call void @lzma_encode_long_rep(%struct.LZMAState* noundef %16, %struct.EncoderInterface_struct* noundef %17, i32 noundef %18, i32 noundef %19)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i32 noundef 189, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.lzma_encode_packet, i64 0, i64 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %20 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %21 = load i32, i32* %type, align 4
  call void @lzma_state_update_ctx_state(%struct.LZMAState* noundef %20, i32 noundef %21)
  %22 = load i32, i32* %len, align 4
  %conv9 = zext i32 %22 to i64
  %23 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %23, i32 0, i32 6
  %24 = load i64, i64* %position, align 8
  %add = add i64 %24, %conv9
  store i64 %add, i64* %position, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_state_update_ctx_state(%struct.LZMAState* noundef %lzma_state, i32 noundef %packet_type) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %packet_type.addr = alloca i32, align 4
  %ctx_state = alloca i8, align 1
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store i32 %packet_type, i32* %packet_type.addr, align 4
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %ctx_state1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %0, i32 0, i32 3
  %1 = load i8, i8* %ctx_state1, align 1
  store i8 %1, i8* %ctx_state, align 1
  %2 = load i32, i32* %packet_type.addr, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3, label %sw.bb19
    i32 4, label %sw.bb25
    i32 0, label %sw.bb31
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i8, i8* %ctx_state, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp slt i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i8 0, i8* %ctx_state, align 1
  br label %if.end13

if.else:                                          ; preds = %sw.bb
  %4 = load i8, i8* %ctx_state, align 1
  %conv3 = zext i8 %4 to i32
  %cmp4 = icmp slt i32 %conv3, 10
  br i1 %cmp4, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  %5 = load i8, i8* %ctx_state, align 1
  %conv7 = zext i8 %5 to i32
  %sub = sub nsw i32 %conv7, 3
  %conv8 = trunc i32 %sub to i8
  store i8 %conv8, i8* %ctx_state, align 1
  br label %if.end

if.else9:                                         ; preds = %if.else
  %6 = load i8, i8* %ctx_state, align 1
  %conv10 = zext i8 %6 to i32
  %sub11 = sub nsw i32 %conv10, 6
  %conv12 = trunc i32 %sub11 to i8
  store i8 %conv12, i8* %ctx_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %7 = load i8, i8* %ctx_state, align 1
  %conv15 = zext i8 %7 to i32
  %cmp16 = icmp slt i32 %conv15, 7
  %8 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 7, i32 10
  %conv18 = trunc i32 %cond to i8
  store i8 %conv18, i8* %ctx_state, align 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %9 = load i8, i8* %ctx_state, align 1
  %conv20 = zext i8 %9 to i32
  %cmp21 = icmp slt i32 %conv20, 7
  %10 = zext i1 %cmp21 to i64
  %cond23 = select i1 %cmp21, i32 9, i32 11
  %conv24 = trunc i32 %cond23 to i8
  store i8 %conv24, i8* %ctx_state, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %11 = load i8, i8* %ctx_state, align 1
  %conv26 = zext i8 %11 to i32
  %cmp27 = icmp slt i32 %conv26, 7
  %12 = zext i1 %cmp27 to i64
  %cond29 = select i1 %cmp27, i32 8, i32 11
  %conv30 = trunc i32 %cond29 to i8
  store i8 %conv30, i8* %ctx_state, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.lzma_state_update_ctx_state, i64 0, i64 0)) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb19, %sw.bb14, %if.end13
  %13 = load i8, i8* %ctx_state, align 1
  %14 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %ctx_state32 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %14, i32 0, i32 3
  store i8 %13, i8* %ctx_state32, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzma_state_init_probs(%struct.LZMAProbabilityModel* noundef %probs) #0 {
entry:
  %probs.addr = alloca %struct.LZMAProbabilityModel*, align 8
  %num_probs = alloca i32, align 4
  %prob_array = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.LZMAProbabilityModel* %probs, %struct.LZMAProbabilityModel** %probs.addr, align 8
  store i32 2615, i32* %num_probs, align 4
  %0 = load %struct.LZMAProbabilityModel*, %struct.LZMAProbabilityModel** %probs.addr, align 8
  %1 = bitcast %struct.LZMAProbabilityModel* %0 to i16*
  store i16* %1, i16** %prob_array, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_probs, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16*, i16** %prob_array, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  store i16 1024, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_state_init(%struct.LZMAState* noundef %lzma_state, i8* noundef %data, i64 noundef %data_size, i24 %properties.coerce) #0 {
entry:
  %properties = alloca %struct.LZMAProperties, align 1
  %tmp.coerce = alloca i24, align 4
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  store i24 %properties.coerce, i24* %tmp.coerce, align 4
  %0 = bitcast %struct.LZMAProperties* %properties to i8*
  %1 = bitcast i24* %tmp.coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 4 %1, i64 3, i1 false)
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %3, i32 0, i32 0
  store i8* %2, i8** %data1, align 8
  %4 = load i64, i64* %data_size.addr, align 8
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data_size2 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %5, i32 0, i32 1
  store i64 %4, i64* %data_size2, align 8
  %6 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %properties3 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %6, i32 0, i32 2
  %7 = bitcast %struct.LZMAProperties* %properties3 to i8*
  %8 = bitcast %struct.LZMAProperties* %properties to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 1 %8, i64 3, i1 false)
  %9 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %ctx_state = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %9, i32 0, i32 3
  store i8 0, i8* %ctx_state, align 1
  %10 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %10, i32 0, i32 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 0
  %11 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %probs = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %12, i32 0, i32 5
  call void @lzma_state_init_probs(%struct.LZMAProbabilityModel* noundef %probs)
  %13 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %13, i32 0, i32 6
  store i64 0, i64* %position, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %file_data = alloca i8*, align 8
  %file_size = alloca i64, align 8
  %init_state = alloca %struct.LZMAState, align 8
  %properties = alloca %struct.LZMAProperties, align 1
  %properties.coerce = alloca i24, align 4
  %packet_enumerator = alloca %struct.PacketEnumerator_struct*, align 8
  %packet_finder = alloca %struct.TopKPacketFinder_struct*, align 8
  %packet_slab_best = alloca %struct.PacketSlab_struct*, align 8
  %packets_best = alloca %struct.LZMAPacket*, align 8
  %best_perplexity = alloca i64, align 8
  %num_epochs = alloca i32, align 4
  %num_iters = alloca i32, align 4
  %step = alloca i32, align 4
  %epoch = alloca i32, align 4
  %packet_slab = alloca %struct.PacketSlab_struct*, align 8
  %packets = alloca %struct.LZMAPacket*, align 8
  %neighbour = alloca %struct.PacketSlabNeighbour, align 8
  %current_perplexity = alloca i64, align 8
  %i = alloca i32, align 4
  %success = alloca i8, align 1
  %transition = alloca i8, align 1
  %output = alloca %struct.OutputInterface_struct, align 8
  %state = alloca %struct.LZMAState, align 8
  %enc = alloca %struct.EncoderInterface_struct, align 8
  %arrayidx85.coerce = alloca { i64, i16 }, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* noundef %3)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 @map_file(i8* noundef %5, i8** noundef %file_data, i64* noundef %file_size)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i64, i64* %file_size, align 8
  %cmp6 = icmp eq i64 %6, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 0, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  %7 = bitcast %struct.LZMAProperties* %properties to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 3, i1 false)
  %8 = load i8*, i8** %file_data, align 8
  %9 = load i64, i64* %file_size, align 8
  %10 = bitcast i24* %properties.coerce to i8*
  %11 = bitcast %struct.LZMAProperties* %properties to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 1 %11, i64 3, i1 false)
  %12 = load i24, i24* %properties.coerce, align 4
  call void @lzma_state_init(%struct.LZMAState* noundef %init_state, i8* noundef %8, i64 noundef %9, i24 %12)
  %13 = load i8*, i8** %file_data, align 8
  %14 = load i64, i64* %file_size, align 8
  %call9 = call %struct.PacketEnumerator_struct* @packet_enumerator_new(i8* noundef %13, i64 noundef %14)
  store %struct.PacketEnumerator_struct* %call9, %struct.PacketEnumerator_struct** %packet_enumerator, align 8
  %15 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %packet_enumerator, align 8
  %call10 = call %struct.TopKPacketFinder_struct* @top_k_packet_finder_new(i64 noundef 20, %struct.PacketEnumerator_struct* noundef %15)
  store %struct.TopKPacketFinder_struct* %call10, %struct.TopKPacketFinder_struct** %packet_finder, align 8
  %16 = load i64, i64* %file_size, align 8
  %call11 = call %struct.PacketSlab_struct* @packet_slab_new(i64 noundef %16)
  store %struct.PacketSlab_struct* %call11, %struct.PacketSlab_struct** %packet_slab_best, align 8
  %17 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %packet_slab_best, align 8
  %call12 = call %struct.LZMAPacket* @packet_slab_packets(%struct.PacketSlab_struct* noundef %17)
  store %struct.LZMAPacket* %call12, %struct.LZMAPacket** %packets_best, align 8
  store i64 0, i64* %best_perplexity, align 8
  store i32 200, i32* %num_epochs, align 4
  %18 = load i64, i64* %file_size, align 8
  %conv = trunc i64 %18 to i32
  store i32 %conv, i32* %num_iters, align 4
  call void @srand(i32 noundef 1673551) #9
  store i32 0, i32* %step, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc79, %if.end8
  %19 = load i32, i32* %step, align 4
  %cmp13 = icmp ult i32 %19, 3
  br i1 %cmp13, label %for.body, label %for.end81

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %epoch, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc76, %for.body
  %20 = load i32, i32* %epoch, align 4
  %cmp16 = icmp ult i32 %20, 200
  br i1 %cmp16, label %for.body18, label %for.end78

for.body18:                                       ; preds = %for.cond15
  %21 = load i64, i64* %file_size, align 8
  %call19 = call %struct.PacketSlab_struct* @packet_slab_new(i64 noundef %21)
  store %struct.PacketSlab_struct* %call19, %struct.PacketSlab_struct** %packet_slab, align 8
  %22 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %packet_slab, align 8
  %call20 = call %struct.LZMAPacket* @packet_slab_packets(%struct.PacketSlab_struct* noundef %22)
  store %struct.LZMAPacket* %call20, %struct.LZMAPacket** %packets, align 8
  store i64 0, i64* %current_perplexity, align 8
  %23 = load i32, i32* %step, align 4
  %cmp21 = icmp ne i32 %23, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body18
  %24 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %25 = bitcast %struct.LZMAPacket* %24 to i8*
  %26 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets_best, align 8
  %27 = bitcast %struct.LZMAPacket* %26 to i8*
  %28 = load i64, i64* %file_size, align 8
  %mul = mul i64 12, %28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %27, i64 %mul, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body18
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc, %if.end24
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %num_iters, align 4
  %cmp26 = icmp slt i32 %29, %30
  br i1 %cmp26, label %for.body28, label %for.end

for.body28:                                       ; preds = %for.cond25
  %31 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %packet_slab, align 8
  call void @packet_slab_neighbour_new(%struct.PacketSlabNeighbour* noundef %neighbour, %struct.PacketSlab_struct* noundef %31, %struct.LZMAState* noundef byval(%struct.LZMAState) align 8 %init_state)
  %32 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder, align 8
  %call29 = call zeroext i1 @packet_slab_neighbour_generate(%struct.PacketSlabNeighbour* noundef %neighbour, %struct.TopKPacketFinder_struct* noundef %32)
  %frombool = zext i1 %call29 to i8
  store i8 %frombool, i8* %success, align 1
  %33 = load i8, i8* %success, align 1
  %tobool = trunc i8 %33 to i1
  br i1 %tobool, label %if.end31, label %if.then30

if.then30:                                        ; preds = %for.body28
  %34 = load i32, i32* %i, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %i, align 4
  br label %for.inc

if.end31:                                         ; preds = %for.body28
  %call32 = call i32 @rand() #9
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %i, align 4
  %mul33 = mul nsw i32 %35, %36
  %add = add nsw i32 %mul33, 1
  %37 = load i32, i32* %step, align 4
  %38 = load i32, i32* %num_iters, align 4
  %mul34 = mul i32 %37, %38
  %div = udiv i32 %mul34, 2
  %add35 = add i32 %add, %div
  %rem = urem i32 %call32, %add35
  %conv36 = uitofp i32 %rem to double
  %39 = load i32, i32* %num_iters, align 4
  %conv37 = sitofp i32 %39 to double
  %call38 = call double @sqrt(double noundef %conv37) #9
  %cmp39 = fcmp olt double %conv36, %call38
  %frombool41 = zext i1 %cmp39 to i8
  store i8 %frombool41, i8* %transition, align 1
  %40 = load i64, i64* %current_perplexity, align 8
  %cmp42 = icmp eq i64 %40, 0
  br i1 %cmp42, label %if.then49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %perplexity = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %neighbour, i32 0, i32 2
  %41 = load i64, i64* %perplexity, align 8
  %42 = load i64, i64* %current_perplexity, align 8
  %cmp44 = icmp ult i64 %41, %42
  br i1 %cmp44, label %if.then49, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %lor.lhs.false
  %43 = load i8, i8* %transition, align 1
  %tobool47 = trunc i8 %43 to i1
  br i1 %tobool47, label %if.then49, label %if.else

if.then49:                                        ; preds = %lor.lhs.false46, %lor.lhs.false, %if.end31
  %perplexity50 = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %neighbour, i32 0, i32 2
  %44 = load i64, i64* %perplexity50, align 8
  store i64 %44, i64* %current_perplexity, align 8
  %45 = load i64, i64* %best_perplexity, align 8
  %cmp51 = icmp eq i64 %45, 0
  br i1 %cmp51, label %if.then56, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %if.then49
  %46 = load i64, i64* %current_perplexity, align 8
  %47 = load i64, i64* %best_perplexity, align 8
  %cmp54 = icmp ult i64 %46, %47
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %lor.lhs.false53, %if.then49
  %48 = load i64, i64* %current_perplexity, align 8
  store i64 %48, i64* %best_perplexity, align 8
  %49 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets_best, align 8
  %50 = bitcast %struct.LZMAPacket* %49 to i8*
  %51 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %52 = bitcast %struct.LZMAPacket* %51 to i8*
  %53 = load i64, i64* %file_size, align 8
  %mul57 = mul i64 12, %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %52, i64 %mul57, i1 false)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %lor.lhs.false53
  br label %if.end59

if.else:                                          ; preds = %lor.lhs.false46
  call void @packet_slab_neighbour_undo(%struct.PacketSlabNeighbour* noundef %neighbour)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.end58
  %54 = load i32, i32* %i, align 4
  %rem60 = srem i32 %54, 100
  %cmp61 = icmp eq i32 %rem60, 0
  br i1 %cmp61, label %if.then63, label %if.end75

if.then63:                                        ; preds = %if.end59
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i64, i64* %current_perplexity, align 8
  %conv64 = uitofp i64 %56 to float
  %div65 = fdiv float %conv64, 1.638400e+04
  %add66 = fadd float 1.800000e+01, %div65
  %conv67 = fpext float %add66 to double
  %57 = load i32, i32* %step, align 4
  %add68 = add i32 %57, 1
  %58 = load i32, i32* %epoch, align 4
  %59 = load i32, i32* %i, align 4
  %conv69 = sitofp i32 %59 to float
  %60 = load i32, i32* %num_iters, align 4
  %conv70 = sitofp i32 %60 to float
  %div71 = fdiv float %conv69, %conv70
  %mul72 = fmul float %div71, 1.000000e+02
  %conv73 = fpext float %mul72 to double
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %55, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), double noundef %conv67, i32 noundef %add68, i32 noundef %58, double noundef %conv73)
  br label %if.end75

if.end75:                                         ; preds = %if.then63, %if.end59
  call void @packet_slab_neighbour_free(%struct.PacketSlabNeighbour* noundef %neighbour)
  br label %for.inc

for.inc:                                          ; preds = %if.end75, %if.then30
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond25, !llvm.loop !9

for.end:                                          ; preds = %for.cond25
  %62 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %packet_slab, align 8
  call void @packet_slab_free(%struct.PacketSlab_struct* noundef %62)
  br label %for.inc76

for.inc76:                                        ; preds = %for.end
  %63 = load i32, i32* %epoch, align 4
  %inc77 = add i32 %63, 1
  store i32 %inc77, i32* %epoch, align 4
  br label %for.cond15, !llvm.loop !10

for.end78:                                        ; preds = %for.cond15
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  %64 = load i32, i32* %step, align 4
  %inc80 = add i32 %64, 1
  store i32 %inc80, i32* %step, align 4
  br label %for.cond, !llvm.loop !11

for.end81:                                        ; preds = %for.cond
  %65 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder, align 8
  call void @top_k_packet_finder_free(%struct.TopKPacketFinder_struct* noundef %65)
  %66 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %packet_enumerator, align 8
  call void @packet_enumerator_free(%struct.PacketEnumerator_struct* noundef %66)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @file_output_new(%struct.OutputInterface_struct* noundef %output, %struct._IO_FILE* noundef %67)
  %68 = bitcast %struct.LZMAState* %state to i8*
  %69 = bitcast %struct.LZMAState* %init_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 5280, i1 false)
  call void @lzma_encode_header(%struct.LZMAState* noundef %state, %struct.OutputInterface_struct* noundef %output)
  call void @range_encoder_new(%struct.EncoderInterface_struct* noundef %enc, %struct.OutputInterface_struct* noundef %output)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end81
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %state, i32 0, i32 6
  %70 = load i64, i64* %position, align 8
  %data_size = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %state, i32 0, i32 1
  %71 = load i64, i64* %data_size, align 8
  %cmp82 = icmp ult i64 %70, %71
  br i1 %cmp82, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets_best, align 8
  %position84 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %state, i32 0, i32 6
  %73 = load i64, i64* %position84, align 8
  %arrayidx85 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %72, i64 %73
  %74 = bitcast { i64, i16 }* %arrayidx85.coerce to i8*
  %75 = bitcast %struct.LZMAPacket* %arrayidx85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 12, i1 false)
  %76 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx85.coerce, i32 0, i32 0
  %77 = load i64, i64* %76, align 4
  %78 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx85.coerce, i32 0, i32 1
  %79 = load i16, i16* %78, align 4
  call void @lzma_encode_packet(%struct.LZMAState* noundef %state, %struct.EncoderInterface_struct* noundef %enc, i64 %77, i16 %79)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  call void @range_encoder_free(%struct.EncoderInterface_struct* noundef %enc)
  %80 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %packet_slab_best, align 8
  call void @packet_slab_free(%struct.PacketSlab_struct* noundef %80)
  %81 = load i8*, i8** %file_data, align 8
  %82 = load i64, i64* %file_size, align 8
  %call86 = call i32 @unmap(i8* noundef %81, i64 noundef %82)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %while.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end90:                                         ; preds = %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end90, %if.then89, %if.then7, %if.then4, %if.then
  %83 = load i32, i32* %retval, align 4
  ret i32 %83
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_file(i8* noundef %filename, i8** noundef %data, i64* noundef %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %data.addr = alloca i8**, align 8
  %data_size.addr = alloca i64*, align 8
  %fd = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %map = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i64* %data_size, i64** %data_size.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef 0)
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef %3)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %fd, align 4
  %call2 = call i32 @fstat(i32 noundef %4, %struct.stat* noundef %buf) #9
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* noundef %6)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %7 = load i64, i64* %st_size, align 8
  %8 = load i32, i32* %fd, align 4
  %call7 = call i8* @mmap(i8* noundef null, i64 noundef %7, i32 noundef 1, i32 noundef 2, i32 noundef %8, i64 noundef 0) #9
  store i8* %call7, i8** %map, align 8
  %9 = load i8*, i8** %map, align 8
  %cmp8 = icmp eq i8* %9, inttoptr (i64 -1 to i8*)
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %filename.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* noundef %11)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %12 = load i32, i32* %fd, align 4
  %call12 = call i32 @close(i32 noundef %12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i32, i32* %fd, align 4
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 noundef %14)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %st_size17 = getelementptr inbounds %struct.stat, %struct.stat* %buf, i32 0, i32 8
  %15 = load i64, i64* %st_size17, align 8
  %16 = load i64*, i64** %data_size.addr, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i8*, i8** %map, align 8
  %18 = load i8**, i8*** %data.addr, align 8
  store i8* %17, i8** %18, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then9, %if.then4, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PacketEnumerator_struct* @packet_enumerator_new(i8* noundef %data, i64 noundef %data_size) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %enumerator = alloca %struct.PacketEnumerator_struct*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 24) #9
  %0 = bitcast i8* %call to %struct.PacketEnumerator_struct*
  store %struct.PacketEnumerator_struct* %0, %struct.PacketEnumerator_struct** %enumerator, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator, align 8
  %data1 = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %2, i32 0, i32 0
  store i8* %1, i8** %data1, align 8
  %3 = load i64, i64* %data_size.addr, align 8
  %4 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator, align 8
  %data_size2 = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %4, i32 0, i32 1
  store i64 %3, i64* %data_size2, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i64, i64* %data_size.addr, align 8
  %call3 = call %struct.SubstringEnumerator_struct* @substring_enumerator_new(i8* noundef %5, i64 noundef %6, i64 noundef 2, i64 noundef 273)
  %7 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator, align 8
  %substring_enumerator = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %7, i32 0, i32 2
  store %struct.SubstringEnumerator_struct* %call3, %struct.SubstringEnumerator_struct** %substring_enumerator, align 8
  %8 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator, align 8
  ret %struct.PacketEnumerator_struct* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TopKPacketFinder_struct* @top_k_packet_finder_new(i64 noundef %size, %struct.PacketEnumerator_struct* noundef %packet_enumerator) #0 {
entry:
  %retval = alloca %struct.TopKPacketFinder_struct*, align 8
  %size.addr = alloca i64, align 8
  %packet_enumerator.addr = alloca %struct.PacketEnumerator_struct*, align 8
  %finder = alloca %struct.TopKPacketFinder_struct*, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.PacketEnumerator_struct* %packet_enumerator, %struct.PacketEnumerator_struct** %packet_enumerator.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 40) #9
  %0 = bitcast i8* %call to %struct.TopKPacketFinder_struct*
  store %struct.TopKPacketFinder_struct* %0, %struct.TopKPacketFinder_struct** %finder, align 8
  %1 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %cmp = icmp eq %struct.TopKPacketFinder_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.TopKPacketFinder_struct* null, %struct.TopKPacketFinder_struct** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %3 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %size1 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %3, i32 0, i32 0
  store i64 %2, i64* %size1, align 8
  %4 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %packet_enumerator.addr, align 8
  %5 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %packet_enumerator2 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %5, i32 0, i32 4
  store %struct.PacketEnumerator_struct* %4, %struct.PacketEnumerator_struct** %packet_enumerator2, align 8
  %6 = load i64, i64* %size.addr, align 8
  %mul = mul i64 16, %6
  %call3 = call noalias i8* @malloc(i64 noundef %mul) #9
  %7 = bitcast i8* %call3 to %struct.TopKEntry*
  %8 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %entries = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %8, i32 0, i32 1
  store %struct.TopKEntry* %7, %struct.TopKEntry** %entries, align 8
  %9 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %entries4 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %9, i32 0, i32 1
  %10 = load %struct.TopKEntry*, %struct.TopKEntry** %entries4, align 8
  %cmp5 = icmp eq %struct.TopKEntry* %10, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %11 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %12 = bitcast %struct.TopKPacketFinder_struct* %11 to i8*
  call void @free(i8* noundef %12) #9
  store %struct.TopKPacketFinder_struct* null, %struct.TopKPacketFinder_struct** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %13 = load i64, i64* %size.addr, align 8
  %14 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %15 = bitcast %struct.TopKPacketFinder_struct* %14 to i8*
  %call8 = call %struct.MaxHeap_struct* @max_heap_new(i64 noundef %13, i32 (i8*, i32, i32)* noundef @top_k_entry_comparator, i8* noundef %15)
  %16 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %heap = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %16, i32 0, i32 3
  store %struct.MaxHeap_struct* %call8, %struct.MaxHeap_struct** %heap, align 8
  %17 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %heap9 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %17, i32 0, i32 3
  %18 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap9, align 8
  %cmp10 = icmp eq %struct.MaxHeap_struct* %18, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %19 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %entries12 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %19, i32 0, i32 1
  %20 = load %struct.TopKEntry*, %struct.TopKEntry** %entries12, align 8
  %21 = bitcast %struct.TopKEntry* %20 to i8*
  call void @free(i8* noundef %21) #9
  %22 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %23 = bitcast %struct.TopKPacketFinder_struct* %22 to i8*
  call void @free(i8* noundef %23) #9
  store %struct.TopKPacketFinder_struct* null, %struct.TopKPacketFinder_struct** %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end7
  %24 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  store %struct.TopKPacketFinder_struct* %24, %struct.TopKPacketFinder_struct** %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then11, %if.then6, %if.then
  %25 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %retval, align 8
  ret %struct.TopKPacketFinder_struct* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PacketSlab_struct* @packet_slab_new(i64 noundef %data_size) #0 {
entry:
  %retval = alloca %struct.PacketSlab_struct*, align 8
  %data_size.addr = alloca i64, align 8
  %slab = alloca %struct.PacketSlab_struct*, align 8
  %packets = alloca i8*, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct.LZMAPacket, align 4
  %tmp.coerce = alloca { i64, i16 }, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 16) #9
  %0 = bitcast i8* %call to %struct.PacketSlab_struct*
  store %struct.PacketSlab_struct* %0, %struct.PacketSlab_struct** %slab, align 8
  %1 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  %cmp = icmp eq %struct.PacketSlab_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.PacketSlab_struct* null, %struct.PacketSlab_struct** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %data_size.addr, align 8
  %3 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  %data_size1 = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %3, i32 0, i32 0
  store i64 %2, i64* %data_size1, align 8
  %4 = load i64, i64* %data_size.addr, align 8
  %mul = mul i64 12, %4
  %call2 = call i32 @map_anonymous(i64 noundef %mul, i8** noundef %packets)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  %6 = bitcast %struct.PacketSlab_struct* %5 to i8*
  call void @free(i8* noundef %6) #9
  store %struct.PacketSlab_struct* null, %struct.PacketSlab_struct** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load i8*, i8** %packets, align 8
  %8 = bitcast i8* %7 to %struct.LZMAPacket*
  %9 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  %packets5 = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %9, i32 0, i32 1
  store %struct.LZMAPacket* %8, %struct.LZMAPacket** %packets5, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %10 = load i64, i64* %i, align 8
  %11 = load i64, i64* %data_size.addr, align 8
  %cmp6 = icmp ult i64 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  %packets7 = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %12, i32 0, i32 1
  %13 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets7, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %13, i64 %14
  %call8 = call { i64, i16 } @literal_packet()
  store { i64, i16 } %call8, { i64, i16 }* %tmp.coerce, align 8
  %15 = bitcast %struct.LZMAPacket* %tmp to i8*
  %16 = bitcast { i64, i16 }* %tmp.coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 8 %16, i64 12, i1 false)
  %17 = bitcast %struct.LZMAPacket* %arrayidx to i8*
  %18 = bitcast %struct.LZMAPacket* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %20 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  store %struct.PacketSlab_struct* %20, %struct.PacketSlab_struct** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %21 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %retval, align 8
  ret %struct.PacketSlab_struct* %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.LZMAPacket* @packet_slab_packets(%struct.PacketSlab_struct* noundef %slab) #0 {
entry:
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  %0 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %packets = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %0, i32 0, i32 1
  %1 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  ret %struct.LZMAPacket* %1
}

; Function Attrs: nounwind
declare dso_local void @srand(i32 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_neighbour_new(%struct.PacketSlabNeighbour* noundef %neighbour, %struct.PacketSlab_struct* noundef %slab, %struct.LZMAState* noundef byval(%struct.LZMAState) align 8 %init_state) #0 {
entry:
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  %0 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %init_state1 = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %0, i32 0, i32 0
  %1 = bitcast %struct.LZMAState* %init_state1 to i8*
  %2 = bitcast %struct.LZMAState* %init_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 5280, i1 false)
  %3 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %4 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %slab2 = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %4, i32 0, i32 1
  store %struct.PacketSlab_struct* %3, %struct.PacketSlab_struct** %slab2, align 8
  %5 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %perplexity = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %5, i32 0, i32 2
  store i64 0, i64* %perplexity, align 8
  %6 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %undo_stack = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %6, i32 0, i32 3
  call void @packet_slab_undo_stack_new(%struct.PacketSlabUndoStack* noundef %undo_stack)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @packet_slab_neighbour_generate(%struct.PacketSlabNeighbour* noundef %neighbour, %struct.TopKPacketFinder_struct* noundef %packet_finder) #0 {
entry:
  %retval = alloca i1, align 1
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  %packet_finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %packets = alloca %struct.LZMAPacket*, align 8
  %lzma_state = alloca %struct.LZMAState, align 8
  %enc = alloca %struct.EncoderInterface_struct, align 8
  %packet_count = alloca i64, align 8
  %mutation_target = alloca i64, align 8
  %arrayidx.coerce = alloca { i64, i16 }, align 4
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  store %struct.TopKPacketFinder_struct* %packet_finder, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %0 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %slab = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %0, i32 0, i32 1
  %1 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  %call = call %struct.LZMAPacket* @packet_slab_packets(%struct.PacketSlab_struct* noundef %1)
  store %struct.LZMAPacket* %call, %struct.LZMAPacket** %packets, align 8
  %2 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %init_state = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %2, i32 0, i32 0
  %3 = bitcast %struct.LZMAState* %lzma_state to i8*
  %4 = bitcast %struct.LZMAState* %init_state to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 5280, i1 false)
  %5 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %perplexity = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %5, i32 0, i32 2
  call void @perplexity_encoder_new(%struct.EncoderInterface_struct* noundef %enc, i64* noundef %perplexity)
  %6 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %slab1 = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %6, i32 0, i32 1
  %7 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab1, align 8
  %call2 = call i64 @packet_slab_count(%struct.PacketSlab_struct* noundef %7)
  store i64 %call2, i64* %packet_count, align 8
  %call3 = call i32 @rand() #9
  %conv = sext i32 %call3 to i64
  %8 = load i64, i64* %packet_count, align 8
  %rem = urem i64 %conv, %8
  store i64 %rem, i64* %mutation_target, align 8
  %9 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %10 = load i64, i64* %mutation_target, align 8
  call void @encode_to_packet_number(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, %struct.LZMAPacket* noundef %9, i64 noundef %10)
  %11 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %12 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %13 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %call4 = call zeroext i1 @mutate_next_packet(%struct.PacketSlabNeighbour* noundef %11, %struct.LZMAState* noundef %lzma_state, %struct.TopKPacketFinder_struct* noundef %12, %struct.LZMAPacket* noundef %13)
  br i1 %call4, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %lzma_state, i32 0, i32 6
  %15 = load i64, i64* %position, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %14, i64 %15
  %16 = bitcast { i64, i16 }* %arrayidx.coerce to i8*
  %17 = bitcast %struct.LZMAPacket* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  %18 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx.coerce, i32 0, i32 0
  %19 = load i64, i64* %18, align 4
  %20 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx.coerce, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  call void @lzma_encode_packet(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, i64 %19, i16 %21)
  %22 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %23 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %24 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  call void @repair_remaining_packets(%struct.PacketSlabNeighbour* noundef %22, %struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, %struct.TopKPacketFinder_struct* noundef %23, %struct.LZMAPacket* noundef %24)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load i1, i1* %retval, align 1
  ret i1 %25
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_neighbour_undo(%struct.PacketSlabNeighbour* noundef %neighbour) #0 {
entry:
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %0 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %undo_stack = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %0, i32 0, i32 3
  %1 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %slab = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %1, i32 0, i32 1
  %2 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab, align 8
  call void @packet_slab_undo_stack_apply(%struct.PacketSlabUndoStack* noundef %undo_stack, %struct.PacketSlab_struct* noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_neighbour_free(%struct.PacketSlabNeighbour* noundef %neighbour) #0 {
entry:
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %0 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %undo_stack = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %0, i32 0, i32 3
  call void @packet_slab_undo_stack_free(%struct.PacketSlabUndoStack* noundef %undo_stack)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_free(%struct.PacketSlab_struct* noundef %slab) #0 {
entry:
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  %0 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %packets = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %0, i32 0, i32 1
  %1 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %2 = bitcast %struct.LZMAPacket* %1 to i8*
  %3 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %data_size = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %3, i32 0, i32 0
  %4 = load i64, i64* %data_size, align 8
  %mul = mul i64 12, %4
  %call = call i32 @unmap(i8* noundef %2, i64 noundef %mul)
  %5 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %6 = bitcast %struct.PacketSlab_struct* %5 to i8*
  call void @free(i8* noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top_k_packet_finder_free(%struct.TopKPacketFinder_struct* noundef %finder) #0 {
entry:
  %finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  store %struct.TopKPacketFinder_struct* %finder, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %0 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %0, i32 0, i32 3
  %1 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  call void @max_heap_free(%struct.MaxHeap_struct* noundef %1)
  %2 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %entries = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %2, i32 0, i32 1
  %3 = load %struct.TopKEntry*, %struct.TopKEntry** %entries, align 8
  %4 = bitcast %struct.TopKEntry* %3 to i8*
  call void @free(i8* noundef %4) #9
  %5 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %6 = bitcast %struct.TopKPacketFinder_struct* %5 to i8*
  call void @free(i8* noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_enumerator_free(%struct.PacketEnumerator_struct* noundef %enumerator) #0 {
entry:
  %enumerator.addr = alloca %struct.PacketEnumerator_struct*, align 8
  store %struct.PacketEnumerator_struct* %enumerator, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %0 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %substring_enumerator = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %0, i32 0, i32 2
  %1 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %substring_enumerator, align 8
  call void @substring_enumerator_free(%struct.SubstringEnumerator_struct* noundef %1)
  %2 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %3 = bitcast %struct.PacketEnumerator_struct* %2 to i8*
  call void @free(i8* noundef %3) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_encoder_new(%struct.EncoderInterface_struct* noundef %enc, %struct.OutputInterface_struct* noundef %output) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %output.addr = alloca %struct.OutputInterface_struct*, align 8
  %data = alloca %struct.RangeEncoderData*, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store %struct.OutputInterface_struct* %output, %struct.OutputInterface_struct** %output.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 32) #9
  %0 = bitcast i8* %call to %struct.RangeEncoderData*
  store %struct.RangeEncoderData* %0, %struct.RangeEncoderData** %data, align 8
  %1 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output.addr, align 8
  %2 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %output1 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %2, i32 0, i32 0
  store %struct.OutputInterface_struct* %1, %struct.OutputInterface_struct** %output1, align 8
  %3 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %3, i32 0, i32 1
  store i64 0, i64* %low, align 8
  %4 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %4, i32 0, i32 2
  store i32 -1, i32* %range, align 8
  %5 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %cache = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %5, i32 0, i32 3
  store i8 0, i8* %cache, align 4
  %6 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %cache_size = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %6, i32 0, i32 4
  store i64 1, i64* %cache_size, align 8
  %7 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %encode_bit = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %7, i32 0, i32 0
  store void (%struct.EncoderInterface_struct*, i1, i16)* @range_encoder_encode_bit, void (%struct.EncoderInterface_struct*, i1, i16)** %encode_bit, align 8
  %8 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %encode_direct_bits = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %8, i32 0, i32 1
  store void (%struct.EncoderInterface_struct*, i32, i32)* @range_encoder_encode_direct_bits, void (%struct.EncoderInterface_struct*, i32, i32)** %encode_direct_bits, align 8
  %9 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %10 = bitcast %struct.RangeEncoderData* %9 to i8*
  %11 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %11, i32 0, i32 2
  store i8* %10, i8** %private_data, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_encoder_free(%struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @range_encoder_flush_data(%struct.EncoderInterface_struct* noundef %0)
  %1 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %1, i32 0, i32 2
  %2 = load i8*, i8** %private_data, align 8
  call void @free(i8* noundef %2) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unmap(i8* noundef %data, i64 noundef %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i64, i64* %data_size.addr, align 8
  %call = call i32 @munmap(i8* noundef %0, i64 noundef %1) #9
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.MaxHeap_struct* @max_heap_new(i64 noundef %size, i32 (i8*, i32, i32)* noundef %comparator, i8* noundef %comparator_data) #0 {
entry:
  %retval = alloca %struct.MaxHeap_struct*, align 8
  %size.addr = alloca i64, align 8
  %comparator.addr = alloca i32 (i8*, i32, i32)*, align 8
  %comparator_data.addr = alloca i8*, align 8
  %heap = alloca %struct.MaxHeap_struct*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 (i8*, i32, i32)* %comparator, i32 (i8*, i32, i32)** %comparator.addr, align 8
  store i8* %comparator_data, i8** %comparator_data.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 40) #9
  %0 = bitcast i8* %call to %struct.MaxHeap_struct*
  store %struct.MaxHeap_struct* %0, %struct.MaxHeap_struct** %heap, align 8
  %1 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %cmp = icmp eq %struct.MaxHeap_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store %struct.MaxHeap_struct* null, %struct.MaxHeap_struct** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %mul = mul i64 4, %3
  %call2 = call noalias i8* @malloc(i64 noundef %mul) #9
  %4 = bitcast i8* %call2 to i32*
  %5 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %5, i32 0, i32 0
  store i32* %4, i32** %store, align 8
  %6 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %store3 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %6, i32 0, i32 0
  %7 = load i32*, i32** %store3, align 8
  %cmp4 = icmp eq i32* %7, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %9 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %10 = bitcast %struct.MaxHeap_struct* %9 to i8*
  call void @free(i8* noundef %10) #9
  store %struct.MaxHeap_struct* null, %struct.MaxHeap_struct** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load i64, i64* %size.addr, align 8
  %12 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %store_size = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %12, i32 0, i32 1
  store i64 %11, i64* %store_size, align 8
  %13 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %13, i32 0, i32 2
  store i64 0, i64* %count, align 8
  %14 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %comparator.addr, align 8
  %15 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %comparator8 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %15, i32 0, i32 3
  store i32 (i8*, i32, i32)* %14, i32 (i8*, i32, i32)** %comparator8, align 8
  %16 = load i8*, i8** %comparator_data.addr, align 8
  %17 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %comparator_data9 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %17, i32 0, i32 4
  store i8* %16, i8** %comparator_data9, align 8
  %18 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  store %struct.MaxHeap_struct* %18, %struct.MaxHeap_struct** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %19 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %retval, align 8
  ret %struct.MaxHeap_struct* %19
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @max_heap_free(%struct.MaxHeap_struct* noundef %heap) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %cmp = icmp eq %struct.MaxHeap_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %1, i32 0, i32 0
  %2 = load i32*, i32** %store, align 8
  %3 = bitcast i32* %2 to i8*
  call void @free(i8* noundef %3) #9
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %5 = bitcast %struct.MaxHeap_struct* %4 to i8*
  call void @free(i8* noundef %5) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @max_heap_count(%struct.MaxHeap_struct* noundef %heap) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 2
  %1 = load i64, i64* %count, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @max_heap_clear(%struct.MaxHeap_struct* noundef %heap) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 2
  store i64 0, i64* %count, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap(i32* noundef %a, i32* noundef %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @max_heap_parent(%struct.MaxHeap_struct* noundef %heap, i64 noundef %index, i64* noundef %parent) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %index.addr = alloca i64, align 8
  %parent.addr = alloca i64*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store i64* %parent, i64** %parent.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %1 = load i64, i64* %index.addr, align 8
  %sub = sub i64 %1, 1
  %div = udiv i64 %sub, 2
  %2 = load i64*, i64** %parent.addr, align 8
  store i64 %div, i64* %2, align 8
  %3 = load i64, i64* %index.addr, align 8
  %cmp = icmp ugt i64 %3, 0
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @max_heap_left_child(%struct.MaxHeap_struct* noundef %heap, i64 noundef %index, i64* noundef %left_child) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %index.addr = alloca i64, align 8
  %left_child.addr = alloca i64*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store i64* %left_child, i64** %left_child.addr, align 8
  %0 = load i64, i64* %index.addr, align 8
  %mul = mul i64 %0, 2
  %add = add i64 %mul, 1
  %1 = load i64*, i64** %left_child.addr, align 8
  store i64 %add, i64* %1, align 8
  %2 = load i64*, i64** %left_child.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %4, i32 0, i32 2
  %5 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %3, %5
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @max_heap_right_child(%struct.MaxHeap_struct* noundef %heap, i64 noundef %index, i64* noundef %right_child) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %index.addr = alloca i64, align 8
  %right_child.addr = alloca i64*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i64 %index, i64* %index.addr, align 8
  store i64* %right_child, i64** %right_child.addr, align 8
  %0 = load i64, i64* %index.addr, align 8
  %mul = mul i64 %0, 2
  %add = add i64 %mul, 2
  %1 = load i64*, i64** %right_child.addr, align 8
  store i64 %add, i64* %1, align 8
  %2 = load i64*, i64** %right_child.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %4, i32 0, i32 2
  %5 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %3, %5
  ret i1 %cmp
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max_heap_bubble_down(%struct.MaxHeap_struct* noundef %heap, i64 noundef %parent) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %parent.addr = alloca i64, align 8
  %cmp = alloca i32 (i8*, i32, i32)*, align 8
  %cmp_dat = alloca i8*, align 8
  %left_child = alloca i64, align 8
  %right_child = alloca i64, align 8
  %largest_child = alloca i64, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i64 %parent, i64* %parent.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %comparator = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 3
  %1 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %comparator, align 8
  store i32 (i8*, i32, i32)* %1, i32 (i8*, i32, i32)** %cmp, align 8
  %2 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %comparator_data = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %2, i32 0, i32 4
  %3 = load i8*, i8** %comparator_data, align 8
  store i8* %3, i8** %cmp_dat, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %5 = load i64, i64* %parent.addr, align 8
  %call = call zeroext i1 @max_heap_left_child(%struct.MaxHeap_struct* noundef %4, i64 noundef %5, i64* noundef %left_child)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i64, i64* %left_child, align 8
  store i64 %6, i64* %largest_child, align 8
  %7 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %8 = load i64, i64* %parent.addr, align 8
  %call1 = call zeroext i1 @max_heap_right_child(%struct.MaxHeap_struct* noundef %7, i64 noundef %8, i64* noundef %right_child)
  br i1 %call1, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  %9 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %cmp, align 8
  %10 = load i8*, i8** %cmp_dat, align 8
  %11 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %11, i32 0, i32 0
  %12 = load i32*, i32** %store, align 8
  %13 = load i64, i64* %right_child, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %13
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store2 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %15, i32 0, i32 0
  %16 = load i32*, i32** %store2, align 8
  %17 = load i64, i64* %left_child, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %16, i64 %17
  %18 = load i32, i32* %arrayidx3, align 4
  %call4 = call i32 %9(i8* noundef %10, i32 noundef %14, i32 noundef %18)
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %19 = load i64, i64* %right_child, align 8
  store i64 %19, i64* %largest_child, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %while.body
  %20 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %cmp, align 8
  %21 = load i8*, i8** %cmp_dat, align 8
  %22 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store8 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %22, i32 0, i32 0
  %23 = load i32*, i32** %store8, align 8
  %24 = load i64, i64* %largest_child, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %23, i64 %24
  %25 = load i32, i32* %arrayidx9, align 4
  %26 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store10 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %26, i32 0, i32 0
  %27 = load i32*, i32** %store10, align 8
  %28 = load i64, i64* %parent.addr, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %27, i64 %28
  %29 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 %20(i8* noundef %21, i32 noundef %25, i32 noundef %29)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  %30 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store15 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %30, i32 0, i32 0
  %31 = load i32*, i32** %store15, align 8
  %32 = load i64, i64* %largest_child, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %31, i64 %32
  %33 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store17 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %33, i32 0, i32 0
  %34 = load i32*, i32** %store17, align 8
  %35 = load i64, i64* %parent.addr, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %34, i64 %35
  call void @swap(i32* noundef %arrayidx16, i32* noundef %arrayidx18)
  %36 = load i64, i64* %largest_child, align 8
  store i64 %36, i64* %parent.addr, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end7
  br label %while.end

if.end19:                                         ; preds = %if.then14
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %if.else, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max_heap_bubble_up(%struct.MaxHeap_struct* noundef %heap, i64 noundef %node) #0 {
entry:
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %node.addr = alloca i64, align 8
  %cmp = alloca i32 (i8*, i32, i32)*, align 8
  %cmp_dat = alloca i8*, align 8
  %parent = alloca i64, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i64 %node, i64* %node.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %comparator = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 3
  %1 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %comparator, align 8
  store i32 (i8*, i32, i32)* %1, i32 (i8*, i32, i32)** %cmp, align 8
  %2 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %comparator_data = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %2, i32 0, i32 4
  %3 = load i8*, i8** %comparator_data, align 8
  store i8* %3, i8** %cmp_dat, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %5 = load i64, i64* %node.addr, align 8
  %call = call zeroext i1 @max_heap_parent(%struct.MaxHeap_struct* noundef %4, i64 noundef %5, i64* noundef %parent)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %cmp, align 8
  %7 = load i8*, i8** %cmp_dat, align 8
  %8 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %8, i32 0, i32 0
  %9 = load i32*, i32** %store, align 8
  %10 = load i64, i64* %node.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %10
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store1 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %12, i32 0, i32 0
  %13 = load i32*, i32** %store1, align 8
  %14 = load i64, i64* %parent, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %13, i64 %14
  %15 = load i32, i32* %arrayidx2, align 4
  %call3 = call i32 %6(i8* noundef %7, i32 noundef %11, i32 noundef %15)
  %cmp4 = icmp sgt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %16 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store5 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %16, i32 0, i32 0
  %17 = load i32*, i32** %store5, align 8
  %18 = load i64, i64* %node.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %17, i64 %18
  %19 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store7 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %19, i32 0, i32 0
  %20 = load i32*, i32** %store7, align 8
  %21 = load i64, i64* %parent, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %20, i64 %21
  call void @swap(i32* noundef %arrayidx6, i32* noundef %arrayidx8)
  %22 = load i64, i64* %parent, align 8
  store i64 %22, i64* %node.addr, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %if.else, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @max_heap_insert(%struct.MaxHeap_struct* noundef %heap, i32 noundef %value) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %value.addr = alloca i32, align 4
  %new_node = alloca i64, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 2
  %1 = load i64, i64* %count, align 8
  %2 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store_size = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %2, i32 0, i32 1
  %3 = load i64, i64* %store_size, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count1 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %4, i32 0, i32 2
  %5 = load i64, i64* %count1, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %count1, align 8
  store i64 %5, i64* %new_node, align 8
  %6 = load i32, i32* %value.addr, align 4
  %7 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %7, i32 0, i32 0
  %8 = load i32*, i32** %store, align 8
  %9 = load i64, i64* %new_node, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 %6, i32* %arrayidx, align 4
  %10 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %11 = load i64, i64* %new_node, align 8
  call void @max_heap_bubble_up(%struct.MaxHeap_struct* noundef %10, i64 noundef %11)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @max_heap_maximum(%struct.MaxHeap_struct* noundef %heap, i32* noundef %value) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  %value.addr = alloca i32*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  store i32* %value, i32** %value.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 2
  %1 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %2, i32 0, i32 0
  %3 = load i32*, i32** %store, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %value.addr, align 8
  store i32 %4, i32* %5, align 4
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @max_heap_remove_maximum(%struct.MaxHeap_struct* noundef %heap) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 2
  %1 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %2, i32 0, i32 0
  %3 = load i32*, i32** %store, align 8
  %4 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count1 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %4, i32 0, i32 2
  %5 = load i64, i64* %count1, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %count1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %dec
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %store2 = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %7, i32 0, i32 0
  %8 = load i32*, i32** %store2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %6, i32* %arrayidx3, align 4
  %9 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  call void @max_heap_bubble_down(%struct.MaxHeap_struct* noundef %9, i64 noundef 0)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @max_heap_update_maximum(%struct.MaxHeap_struct* noundef %heap) #0 {
entry:
  %retval = alloca i1, align 1
  %heap.addr = alloca %struct.MaxHeap_struct*, align 8
  store %struct.MaxHeap_struct* %heap, %struct.MaxHeap_struct** %heap.addr, align 8
  %0 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  %count = getelementptr inbounds %struct.MaxHeap_struct, %struct.MaxHeap_struct* %0, i32 0, i32 2
  %1 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap.addr, align 8
  call void @max_heap_bubble_down(%struct.MaxHeap_struct* noundef %2, i64 noundef 0)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1
  ret i1 %3
}

declare dso_local i32 @open(i8* noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32 noundef, %struct.stat* noundef) #6

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8* noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #6

declare dso_local i32 @close(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_anonymous(i64 noundef %data_size, i8** noundef %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data_size.addr = alloca i64, align 8
  %data.addr = alloca i8**, align 8
  %map = alloca i8*, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %call = call i8* @mmap(i8* noundef null, i64 noundef %0, i32 noundef 3, i32 noundef 33, i32 noundef 0, i64 noundef 0) #9
  store i8* %call, i8** %map, align 8
  %1 = load i8*, i8** %map, align 8
  %cmp = icmp eq i8* %1, inttoptr (i64 -1 to i8*)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i64, i64* %data_size.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i64 noundef %3)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %map, align 8
  %5 = load i8**, i8*** %data.addr, align 8
  store i8* %4, i8** %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8* noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packet_enumerator_memory_usage(i64 noundef %data_size) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %call = call i64 @substring_enumerator_memory_usage(i64 noundef %0)
  %add = add i64 24, %call
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @substring_enumerator_memory_usage(i64 noundef %data_size) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %mul = mul i64 8, %0
  %add = add i64 %mul, 1048616
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SubstringEnumerator_struct* @substring_enumerator_new(i8* noundef %data, i64 noundef %data_size, i64 noundef %min_length, i64 noundef %max_length) #0 {
entry:
  %retval = alloca %struct.SubstringEnumerator_struct*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %min_length.addr = alloca i64, align 8
  %max_length.addr = alloca i64, align 8
  %enumerator = alloca %struct.SubstringEnumerator_struct*, align 8
  %bigram_positions = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64 %min_length, i64* %min_length.addr, align 8
  store i64 %max_length, i64* %max_length.addr, align 8
  %0 = load i64, i64* %min_length.addr, align 8
  %cmp = icmp ne i64 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.22, i64 0, i64 0))
  store %struct.SubstringEnumerator_struct* null, %struct.SubstringEnumerator_struct** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call noalias i8* @malloc(i64 noundef 1048616) #9
  %2 = bitcast i8* %call1 to %struct.SubstringEnumerator_struct*
  store %struct.SubstringEnumerator_struct* %2, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %3 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %cmp2 = icmp eq %struct.SubstringEnumerator_struct* %3, null
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %4, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.23, i64 0, i64 0))
  store %struct.SubstringEnumerator_struct* null, %struct.SubstringEnumerator_struct** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %6 = bitcast %struct.SubstringEnumerator_struct* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 1048616, i1 false)
  %7 = load i8*, i8** %data.addr, align 8
  %8 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %data6 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %8, i32 0, i32 0
  store i8* %7, i8** %data6, align 8
  %9 = load i64, i64* %data_size.addr, align 8
  %10 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %data_size7 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %10, i32 0, i32 1
  store i64 %9, i64* %data_size7, align 8
  %11 = load i64, i64* %min_length.addr, align 8
  %12 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %min_length8 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %12, i32 0, i32 2
  store i64 %11, i64* %min_length8, align 8
  %13 = load i64, i64* %max_length.addr, align 8
  %14 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %max_length9 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %14, i32 0, i32 3
  store i64 %13, i64* %max_length9, align 8
  %15 = load i64, i64* %data_size.addr, align 8
  %mul = mul i64 8, %15
  %call10 = call i32 @map_anonymous(i64 noundef %mul, i8** noundef %bigram_positions)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end5
  %16 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %17 = bitcast %struct.SubstringEnumerator_struct* %16 to i8*
  call void @free(i8* noundef %17) #9
  store %struct.SubstringEnumerator_struct* null, %struct.SubstringEnumerator_struct** %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end5
  %18 = load i8*, i8** %bigram_positions, align 8
  %19 = bitcast i8* %18 to i64*
  %20 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  %bigram_positions13 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %20, i32 0, i32 6
  store i64* %19, i64** %bigram_positions13, align 8
  %21 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  call void @memoize_bigram_positions(%struct.SubstringEnumerator_struct* noundef %21)
  %22 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator, align 8
  store %struct.SubstringEnumerator_struct* %22, %struct.SubstringEnumerator_struct** %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then3, %if.then
  %23 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %retval, align 8
  ret %struct.SubstringEnumerator_struct* %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @substring_enumerator_free(%struct.SubstringEnumerator_struct* noundef %enumerator) #0 {
entry:
  %enumerator.addr = alloca %struct.SubstringEnumerator_struct*, align 8
  store %struct.SubstringEnumerator_struct* %enumerator, %struct.SubstringEnumerator_struct** %enumerator.addr, align 8
  %0 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator.addr, align 8
  %bigram_positions = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %0, i32 0, i32 6
  %1 = load i64*, i64** %bigram_positions, align 8
  %2 = bitcast i64* %1 to i8*
  %3 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator.addr, align 8
  %data_size = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %3, i32 0, i32 1
  %4 = load i64, i64* %data_size, align 8
  %mul = mul i64 8, %4
  %call = call i32 @unmap(i8* noundef %2, i64 noundef %mul)
  %5 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %enumerator.addr, align 8
  %6 = bitcast %struct.SubstringEnumerator_struct* %5 to i8*
  call void @free(i8* noundef %6) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_enumerator_substring_callback(i8* noundef %user_data, i64 noundef %offset, i64 noundef %length) #0 {
entry:
  %user_data.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %data = alloca %struct.PacketEnumeratorSubstringCallbackData*, align 8
  %lzma_state = alloca %struct.LZMAState*, align 8
  %callback = alloca void (i8*, %struct.LZMAState*, i64, i16)*, align 8
  %callback_user_data = alloca i8*, align 8
  %dist = alloca i32, align 4
  %agg.tmp = alloca %struct.LZMAPacket, align 4
  %tmp.coerce = alloca { i64, i16 }, align 8
  %agg.tmp.coerce = alloca { i64, i16 }, align 4
  %i = alloca i32, align 4
  %agg.tmp9 = alloca %struct.LZMAPacket, align 4
  %tmp.coerce12 = alloca { i64, i16 }, align 8
  %agg.tmp9.coerce = alloca { i64, i16 }, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.PacketEnumeratorSubstringCallbackData*
  store %struct.PacketEnumeratorSubstringCallbackData* %1, %struct.PacketEnumeratorSubstringCallbackData** %data, align 8
  %2 = load %struct.PacketEnumeratorSubstringCallbackData*, %struct.PacketEnumeratorSubstringCallbackData** %data, align 8
  %lzma_state1 = getelementptr inbounds %struct.PacketEnumeratorSubstringCallbackData, %struct.PacketEnumeratorSubstringCallbackData* %2, i32 0, i32 0
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state1, align 8
  store %struct.LZMAState* %3, %struct.LZMAState** %lzma_state, align 8
  %4 = load %struct.PacketEnumeratorSubstringCallbackData*, %struct.PacketEnumeratorSubstringCallbackData** %data, align 8
  %callback2 = getelementptr inbounds %struct.PacketEnumeratorSubstringCallbackData, %struct.PacketEnumeratorSubstringCallbackData* %4, i32 0, i32 1
  %5 = load void (i8*, %struct.LZMAState*, i64, i16)*, void (i8*, %struct.LZMAState*, i64, i16)** %callback2, align 8
  store void (i8*, %struct.LZMAState*, i64, i16)* %5, void (i8*, %struct.LZMAState*, i64, i16)** %callback, align 8
  %6 = load %struct.PacketEnumeratorSubstringCallbackData*, %struct.PacketEnumeratorSubstringCallbackData** %data, align 8
  %user_data3 = getelementptr inbounds %struct.PacketEnumeratorSubstringCallbackData, %struct.PacketEnumeratorSubstringCallbackData* %6, i32 0, i32 2
  %7 = load i8*, i8** %user_data3, align 8
  store i8* %7, i8** %callback_user_data, align 8
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %8, i32 0, i32 6
  %9 = load i64, i64* %position, align 8
  %10 = load i64, i64* %offset.addr, align 8
  %sub = sub i64 %9, %10
  %sub4 = sub i64 %sub, 1
  %conv = trunc i64 %sub4 to i32
  store i32 %conv, i32* %dist, align 4
  %11 = load void (i8*, %struct.LZMAState*, i64, i16)*, void (i8*, %struct.LZMAState*, i64, i16)** %callback, align 8
  %12 = load i8*, i8** %callback_user_data, align 8
  %13 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state, align 8
  %14 = load i32, i32* %dist, align 4
  %15 = load i64, i64* %length.addr, align 8
  %conv5 = trunc i64 %15 to i32
  %call = call { i64, i16 } @match_packet(i32 noundef %14, i32 noundef %conv5)
  store { i64, i16 } %call, { i64, i16 }* %tmp.coerce, align 8
  %16 = bitcast %struct.LZMAPacket* %agg.tmp to i8*
  %17 = bitcast { i64, i16 }* %tmp.coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 8 %17, i64 12, i1 false)
  %18 = bitcast { i64, i16 }* %agg.tmp.coerce to i8*
  %19 = bitcast %struct.LZMAPacket* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp.coerce, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  %22 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp.coerce, i32 0, i32 1
  %23 = load i16, i16* %22, align 4
  call void %11(i8* noundef %12, %struct.LZMAState* noundef %13, i64 %21, i16 %23)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %24 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %24, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %dist, align 4
  %26 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %26, i32 0, i32 4
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 %idxprom
  %28 = load i32, i32* %arrayidx, align 4
  %cmp7 = icmp eq i32 %25, %28
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load void (i8*, %struct.LZMAState*, i64, i16)*, void (i8*, %struct.LZMAState*, i64, i16)** %callback, align 8
  %30 = load i8*, i8** %callback_user_data, align 8
  %31 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state, align 8
  %32 = load i32, i32* %i, align 4
  %33 = load i64, i64* %length.addr, align 8
  %conv10 = trunc i64 %33 to i32
  %call11 = call { i64, i16 } @long_rep_packet(i32 noundef %32, i32 noundef %conv10)
  store { i64, i16 } %call11, { i64, i16 }* %tmp.coerce12, align 8
  %34 = bitcast %struct.LZMAPacket* %agg.tmp9 to i8*
  %35 = bitcast { i64, i16 }* %tmp.coerce12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 8 %35, i64 12, i1 false)
  %36 = bitcast { i64, i16 }* %agg.tmp9.coerce to i8*
  %37 = bitcast %struct.LZMAPacket* %agg.tmp9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp9.coerce, i32 0, i32 0
  %39 = load i64, i64* %38, align 4
  %40 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp9.coerce, i32 0, i32 1
  %41 = load i16, i16* %40, align 4
  call void %29(i8* noundef %30, %struct.LZMAState* noundef %31, i64 %39, i16 %41)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_enumerator_for_each(%struct.PacketEnumerator_struct* noundef %enumerator, %struct.LZMAState* noundef %lzma_state, void (i8*, %struct.LZMAState*, i64, i16)* noundef %callback, i8* noundef %user_data) #0 {
entry:
  %enumerator.addr = alloca %struct.PacketEnumerator_struct*, align 8
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %callback.addr = alloca void (i8*, %struct.LZMAState*, i64, i16)*, align 8
  %user_data.addr = alloca i8*, align 8
  %agg.tmp = alloca %struct.LZMAPacket, align 4
  %tmp.coerce = alloca { i64, i16 }, align 8
  %agg.tmp.coerce = alloca { i64, i16 }, align 4
  %rep0_position = alloca i64, align 8
  %agg.tmp16 = alloca %struct.LZMAPacket, align 4
  %tmp.coerce18 = alloca { i64, i16 }, align 8
  %agg.tmp16.coerce = alloca { i64, i16 }, align 4
  %data21 = alloca %struct.PacketEnumeratorSubstringCallbackData, align 8
  store %struct.PacketEnumerator_struct* %enumerator, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store void (i8*, %struct.LZMAState*, i64, i16)* %callback, void (i8*, %struct.LZMAState*, i64, i16)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %data = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %0, i32 0, i32 0
  %1 = load i8*, i8** %data, align 8
  %2 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %2, i32 0, i32 0
  %3 = load i8*, i8** %data1, align 8
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([111 x i8], [111 x i8]* @__PRETTY_FUNCTION__.packet_enumerator_for_each, i64 0, i64 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %4 = load void (i8*, %struct.LZMAState*, i64, i16)*, void (i8*, %struct.LZMAState*, i64, i16)** %callback.addr, align 8
  %5 = load i8*, i8** %user_data.addr, align 8
  %6 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %call = call { i64, i16 } @literal_packet()
  store { i64, i16 } %call, { i64, i16 }* %tmp.coerce, align 8
  %7 = bitcast %struct.LZMAPacket* %agg.tmp to i8*
  %8 = bitcast { i64, i16 }* %tmp.coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 8 %8, i64 12, i1 false)
  %9 = bitcast { i64, i16 }* %agg.tmp.coerce to i8*
  %10 = bitcast %struct.LZMAPacket* %agg.tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  %11 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp.coerce, i32 0, i32 0
  %12 = load i64, i64* %11, align 4
  %13 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp.coerce, i32 0, i32 1
  %14 = load i16, i16* %13, align 4
  call void %4(i8* noundef %5, %struct.LZMAState* noundef %6, i64 %12, i16 %14)
  %15 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %15, i32 0, i32 6
  %16 = load i64, i64* %position, align 8
  %cmp2 = icmp ugt i64 %16, 0
  br i1 %cmp2, label %if.then3, label %if.end20

if.then3:                                         ; preds = %if.end
  %17 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position4 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %17, i32 0, i32 6
  %18 = load i64, i64* %position4, align 8
  %19 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %19, i32 0, i32 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 0
  %20 = load i32, i32* %arrayidx, align 4
  %conv = zext i32 %20 to i64
  %sub = sub i64 %18, %conv
  %sub5 = sub i64 %sub, 1
  store i64 %sub5, i64* %rep0_position, align 8
  %21 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %data6 = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %21, i32 0, i32 0
  %22 = load i8*, i8** %data6, align 8
  %23 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position7 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %23, i32 0, i32 6
  %24 = load i64, i64* %position7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %22, i64 %24
  %25 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %25 to i32
  %26 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %data10 = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %26, i32 0, i32 0
  %27 = load i8*, i8** %data10, align 8
  %28 = load i64, i64* %rep0_position, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %27, i64 %28
  %29 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %29 to i32
  %cmp13 = icmp eq i32 %conv9, %conv12
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.then3
  %30 = load void (i8*, %struct.LZMAState*, i64, i16)*, void (i8*, %struct.LZMAState*, i64, i16)** %callback.addr, align 8
  %31 = load i8*, i8** %user_data.addr, align 8
  %32 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %call17 = call { i64, i16 } @short_rep_packet()
  store { i64, i16 } %call17, { i64, i16 }* %tmp.coerce18, align 8
  %33 = bitcast %struct.LZMAPacket* %agg.tmp16 to i8*
  %34 = bitcast { i64, i16 }* %tmp.coerce18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 8 %34, i64 12, i1 false)
  %35 = bitcast { i64, i16 }* %agg.tmp16.coerce to i8*
  %36 = bitcast %struct.LZMAPacket* %agg.tmp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 12, i1 false)
  %37 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp16.coerce, i32 0, i32 0
  %38 = load i64, i64* %37, align 4
  %39 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %agg.tmp16.coerce, i32 0, i32 1
  %40 = load i16, i16* %39, align 4
  call void %30(i8* noundef %31, %struct.LZMAState* noundef %32, i64 %38, i16 %40)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then3
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end
  %lzma_state22 = getelementptr inbounds %struct.PacketEnumeratorSubstringCallbackData, %struct.PacketEnumeratorSubstringCallbackData* %data21, i32 0, i32 0
  %41 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.LZMAState* %41, %struct.LZMAState** %lzma_state22, align 8
  %callback23 = getelementptr inbounds %struct.PacketEnumeratorSubstringCallbackData, %struct.PacketEnumeratorSubstringCallbackData* %data21, i32 0, i32 1
  %42 = load void (i8*, %struct.LZMAState*, i64, i16)*, void (i8*, %struct.LZMAState*, i64, i16)** %callback.addr, align 8
  store void (i8*, %struct.LZMAState*, i64, i16)* %42, void (i8*, %struct.LZMAState*, i64, i16)** %callback23, align 8
  %user_data24 = getelementptr inbounds %struct.PacketEnumeratorSubstringCallbackData, %struct.PacketEnumeratorSubstringCallbackData* %data21, i32 0, i32 2
  %43 = load i8*, i8** %user_data.addr, align 8
  store i8* %43, i8** %user_data24, align 8
  %44 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %enumerator.addr, align 8
  %substring_enumerator = getelementptr inbounds %struct.PacketEnumerator_struct, %struct.PacketEnumerator_struct* %44, i32 0, i32 2
  %45 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %substring_enumerator, align 8
  %46 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position25 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %46, i32 0, i32 6
  %47 = load i64, i64* %position25, align 8
  %48 = bitcast %struct.PacketEnumeratorSubstringCallbackData* %data21 to i8*
  call void @substring_enumerator_for_each(%struct.SubstringEnumerator_struct* noundef %45, i64 noundef %47, void (i8*, i64, i64)* noundef @packet_enumerator_substring_callback, i8* noundef %48)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @substring_enumerator_for_each(%struct.SubstringEnumerator_struct* noundef %em, i64 noundef %pos, void (i8*, i64, i64)* noundef %callback, i8* noundef %user_data) #0 {
entry:
  %em.addr = alloca %struct.SubstringEnumerator_struct*, align 8
  %pos.addr = alloca i64, align 8
  %callback.addr = alloca void (i8*, i64, i64)*, align 8
  %user_data.addr = alloca i8*, align 8
  %first = alloca i8, align 1
  %second = alloca i8, align 1
  %offset = alloca i64, align 8
  %size = alloca i64, align 8
  %i = alloca i64, align 8
  %position = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.SubstringEnumerator_struct* %em, %struct.SubstringEnumerator_struct** %em.addr, align 8
  store i64 %pos, i64* %pos.addr, align 8
  store void (i8*, i64, i64)* %callback, void (i8*, i64, i64)** %callback.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i64, i64* %pos.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end39

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pos.addr, align 8
  %2 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data_size = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %2, i32 0, i32 1
  %3 = load i64, i64* %data_size, align 8
  %sub = sub i64 %3, 1
  %cmp1 = icmp eq i64 %1, %sub
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %for.end39

if.end3:                                          ; preds = %if.end
  %4 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = load i64, i64* %pos.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  store i8 %7, i8* %first, align 1
  %8 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data4 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %8, i32 0, i32 0
  %9 = load i8*, i8** %data4, align 8
  %10 = load i64, i64* %pos.addr, align 8
  %add = add i64 %10, 1
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %add
  %11 = load i8, i8* %arrayidx5, align 1
  store i8 %11, i8* %second, align 1
  %12 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_offsets = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %12, i32 0, i32 4
  %13 = load i8, i8* %first, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx6 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_offsets, i64 0, i64 %idxprom
  %14 = load i8, i8* %second, align 1
  %idxprom7 = zext i8 %14 to i64
  %arrayidx8 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx6, i64 0, i64 %idxprom7
  %15 = load i64, i64* %arrayidx8, align 8
  store i64 %15, i64* %offset, align 8
  %16 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_sizes = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %16, i32 0, i32 5
  %17 = load i8, i8* %first, align 1
  %idxprom9 = zext i8 %17 to i64
  %arrayidx10 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_sizes, i64 0, i64 %idxprom9
  %18 = load i8, i8* %second, align 1
  %idxprom11 = zext i8 %18 to i64
  %arrayidx12 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx10, i64 0, i64 %idxprom11
  %19 = load i64, i64* %arrayidx12, align 8
  store i64 %19, i64* %size, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %if.end3
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %size, align 8
  %cmp13 = icmp ult i64 %20, %21
  br i1 %cmp13, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %22 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_positions = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %22, i32 0, i32 6
  %23 = load i64*, i64** %bigram_positions, align 8
  %24 = load i64, i64* %offset, align 8
  %25 = load i64, i64* %i, align 8
  %add14 = add i64 %24, %25
  %arrayidx15 = getelementptr inbounds i64, i64* %23, i64 %add14
  %26 = load i64, i64* %arrayidx15, align 8
  store i64 %26, i64* %position, align 8
  %27 = load i64, i64* %position, align 8
  %28 = load i64, i64* %pos.addr, align 8
  %cmp16 = icmp uge i64 %27, %28
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  br label %for.end39

if.end18:                                         ; preds = %for.body
  %29 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %callback.addr, align 8
  %30 = load i8*, i8** %user_data.addr, align 8
  %31 = load i64, i64* %position, align 8
  call void %29(i8* noundef %30, i64 noundef %31, i64 noundef 2)
  store i64 2, i64* %j, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %if.end18
  %32 = load i64, i64* %j, align 8
  %33 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %max_length = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %33, i32 0, i32 3
  %34 = load i64, i64* %max_length, align 8
  %cmp20 = icmp ult i64 %32, %34
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond19
  %35 = load i64, i64* %j, align 8
  %36 = load i64, i64* %pos.addr, align 8
  %add21 = add i64 %35, %36
  %37 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data_size22 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %37, i32 0, i32 1
  %38 = load i64, i64* %data_size22, align 8
  %cmp23 = icmp ult i64 %add21, %38
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond19
  %39 = phi i1 [ false, %for.cond19 ], [ %cmp23, %land.rhs ]
  br i1 %39, label %for.body24, label %for.end

for.body24:                                       ; preds = %land.end
  %40 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data25 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %40, i32 0, i32 0
  %41 = load i8*, i8** %data25, align 8
  %42 = load i64, i64* %pos.addr, align 8
  %43 = load i64, i64* %j, align 8
  %add26 = add i64 %42, %43
  %arrayidx27 = getelementptr inbounds i8, i8* %41, i64 %add26
  %44 = load i8, i8* %arrayidx27, align 1
  %conv = zext i8 %44 to i32
  %45 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data28 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %45, i32 0, i32 0
  %46 = load i8*, i8** %data28, align 8
  %47 = load i64, i64* %position, align 8
  %48 = load i64, i64* %j, align 8
  %add29 = add i64 %47, %48
  %arrayidx30 = getelementptr inbounds i8, i8* %46, i64 %add29
  %49 = load i8, i8* %arrayidx30, align 1
  %conv31 = zext i8 %49 to i32
  %cmp32 = icmp ne i32 %conv, %conv31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body24
  br label %for.end

if.end35:                                         ; preds = %for.body24
  %50 = load void (i8*, i64, i64)*, void (i8*, i64, i64)** %callback.addr, align 8
  %51 = load i8*, i8** %user_data.addr, align 8
  %52 = load i64, i64* %position, align 8
  %53 = load i64, i64* %j, align 8
  %add36 = add i64 1, %53
  call void %50(i8* noundef %51, i64 noundef %52, i64 noundef %add36)
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %54 = load i64, i64* %j, align 8
  %inc = add i64 %54, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond19, !llvm.loop !17

for.end:                                          ; preds = %if.then34, %land.end
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %55 = load i64, i64* %i, align 8
  %inc38 = add i64 %55, 1
  store i64 %inc38, i64* %i, align 8
  br label %for.cond, !llvm.loop !18

for.end39:                                        ; preds = %if.then, %if.then2, %if.then17, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packet_slab_memory_usage(i64 noundef %data_size) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %mul = mul i64 12, %0
  %add = add i64 %mul, 16
  ret i64 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packet_slab_size(%struct.PacketSlab_struct* noundef %slab) #0 {
entry:
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  %0 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %data_size = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %0, i32 0, i32 0
  %1 = load i64, i64* %data_size, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packet_slab_count(%struct.PacketSlab_struct* noundef %slab) #0 {
entry:
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  %position = alloca i64, align 8
  %count = alloca i64, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  store i64 0, i64* %position, align 8
  store i64 0, i64* %count, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %position, align 8
  %1 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %data_size = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %1, i32 0, i32 0
  %2 = load i64, i64* %data_size, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %count, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %count, align 8
  %4 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %packets = getelementptr inbounds %struct.PacketSlab_struct, %struct.PacketSlab_struct* %4, i32 0, i32 1
  %5 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %6 = load i64, i64* %position, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %5, i64 %6
  %len = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %arrayidx, i32 0, i32 2
  %7 = load i16, i16* %len, align 4
  %conv = zext i16 %7 to i64
  %8 = load i64, i64* %position, align 8
  %add = add i64 %8, %conv
  store i64 %add, i64* %position, align 8
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %9 = load i64, i64* %count, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_undo_stack_new(%struct.PacketSlabUndoStack* noundef %undo_stack) #0 {
entry:
  %undo_stack.addr = alloca %struct.PacketSlabUndoStack*, align 8
  store %struct.PacketSlabUndoStack* %undo_stack, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %0 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %0, i32 0, i32 1
  store i64 0, i64* %count, align 8
  %1 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %total_count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %1, i32 0, i32 0
  store i64 0, i64* %total_count, align 8
  %2 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %2, i32 0, i32 3
  store %struct.PacketSlabUndoHeap_struct* null, %struct.PacketSlabUndoHeap_struct** %last, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_undo_stack_free(%struct.PacketSlabUndoStack* noundef %undo_stack) #0 {
entry:
  %undo_stack.addr = alloca %struct.PacketSlabUndoStack*, align 8
  %undo_heap = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  store %struct.PacketSlabUndoStack* %undo_stack, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %0 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %0, i32 0, i32 1
  store i64 0, i64* %count, align 8
  %1 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %total_count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %1, i32 0, i32 0
  store i64 0, i64* %total_count, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %2, i32 0, i32 3
  %3 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last, align 8
  %cmp = icmp ne %struct.PacketSlabUndoHeap_struct* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last1 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %4, i32 0, i32 3
  %5 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last1, align 8
  store %struct.PacketSlabUndoHeap_struct* %5, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %6 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %prev = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %6, i32 0, i32 3
  %7 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %prev, align 8
  %8 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last2 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %8, i32 0, i32 3
  store %struct.PacketSlabUndoHeap_struct* %7, %struct.PacketSlabUndoHeap_struct** %last2, align 8
  %9 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  call void @packet_slab_undo_heap_free(%struct.PacketSlabUndoHeap_struct* noundef %9)
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_to_packet_number(%struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, %struct.LZMAPacket* noundef %packets, i64 noundef %target) #0 {
entry:
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %packets.addr = alloca %struct.LZMAPacket*, align 8
  %target.addr = alloca i64, align 8
  %count = alloca i64, align 8
  %arrayidx.coerce = alloca { i64, i16 }, align 4
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store %struct.LZMAPacket* %packets, %struct.LZMAPacket** %packets.addr, align 8
  store i64 %target, i64* %target.addr, align 8
  store i64 0, i64* %count, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %0, i32 0, i32 6
  %1 = load i64, i64* %position, align 8
  %2 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data_size = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %2, i32 0, i32 1
  %3 = load i64, i64* %data_size, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %count, align 8
  %5 = load i64, i64* %target.addr, align 8
  %cmp1 = icmp eq i64 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i64, i64* %count, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %count, align 8
  %7 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %8 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %9 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %10 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position2 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %10, i32 0, i32 6
  %11 = load i64, i64* %position2, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %9, i64 %11
  %12 = bitcast { i64, i16 }* %arrayidx.coerce to i8*
  %13 = bitcast %struct.LZMAPacket* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx.coerce, i32 0, i32 0
  %15 = load i64, i64* %14, align 4
  %16 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx.coerce, i32 0, i32 1
  %17 = load i16, i16* %16, align 4
  call void @lzma_encode_packet(%struct.LZMAState* noundef %7, %struct.EncoderInterface_struct* noundef %8, i64 %15, i16 %17)
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_packet_at_position(%struct.PacketSlabNeighbour* noundef %neighbour, i64 %packet.coerce0, i16 %packet.coerce1, i64 noundef %position) #0 {
entry:
  %packet = alloca %struct.LZMAPacket, align 4
  %coerce = alloca { i64, i16 }, align 4
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  %position.addr = alloca i64, align 8
  %undo = alloca %struct.PacketSlabUndo, align 8
  %0 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 0
  store i64 %packet.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 1
  store i16 %packet.coerce1, i16* %1, align 4
  %2 = bitcast %struct.LZMAPacket* %packet to i8*
  %3 = bitcast { i64, i16 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  store i64 %position, i64* %position.addr, align 8
  %position1 = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %undo, i32 0, i32 0
  %4 = load i64, i64* %position.addr, align 8
  store i64 %4, i64* %position1, align 8
  %old_packet = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %undo, i32 0, i32 1
  %5 = bitcast %struct.LZMAPacket* %old_packet to i8*
  %6 = bitcast %struct.LZMAPacket* %packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 %6, i64 12, i1 false)
  %7 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %undo_stack = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %7, i32 0, i32 3
  call void @packet_slab_undo_stack_insert(%struct.PacketSlabUndoStack* noundef %undo_stack, %struct.PacketSlabUndo* noundef byval(%struct.PacketSlabUndo) align 8 %undo)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_undo_stack_insert(%struct.PacketSlabUndoStack* noundef %undo_stack, %struct.PacketSlabUndo* noundef byval(%struct.PacketSlabUndo) align 8 %undo) #0 {
entry:
  %undo_stack.addr = alloca %struct.PacketSlabUndoStack*, align 8
  %next_size = alloca i64, align 8
  %prev = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  store %struct.PacketSlabUndoStack* %undo_stack, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %0 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %total_count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %0, i32 0, i32 0
  %1 = load i64, i64* %total_count, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %total_count, align 8
  %2 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %2, i32 0, i32 1
  %3 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %3, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %stack = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %4, i32 0, i32 2
  %5 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %count1 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %5, i32 0, i32 1
  %6 = load i64, i64* %count1, align 8
  %inc2 = add i64 %6, 1
  store i64 %inc2, i64* %count1, align 8
  %arrayidx = getelementptr inbounds [16 x %struct.PacketSlabUndo], [16 x %struct.PacketSlabUndo]* %stack, i64 0, i64 %6
  %7 = bitcast %struct.PacketSlabUndo* %arrayidx to i8*
  %8 = bitcast %struct.PacketSlabUndo* %undo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %9, i32 0, i32 3
  %10 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last, align 8
  %cmp3 = icmp eq %struct.PacketSlabUndoHeap_struct* %10, null
  br i1 %cmp3, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last4 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %11, i32 0, i32 3
  %12 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last4, align 8
  %size = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %12, i32 0, i32 0
  %13 = load i64, i64* %size, align 8
  %14 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last5 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %14, i32 0, i32 3
  %15 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last5, align 8
  %count6 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %15, i32 0, i32 1
  %16 = load i64, i64* %count6, align 8
  %cmp7 = icmp eq i64 %13, %16
  br i1 %cmp7, label %if.then8, label %if.end17

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i64 32, i64* %next_size, align 8
  %17 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last9 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %17, i32 0, i32 3
  %18 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last9, align 8
  %cmp10 = icmp ne %struct.PacketSlabUndoHeap_struct* %18, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then8
  %19 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last12 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %19, i32 0, i32 3
  %20 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last12, align 8
  %size13 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %20, i32 0, i32 0
  %21 = load i64, i64* %size13, align 8
  %mul = mul i64 %21, 2
  store i64 %mul, i64* %next_size, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then8
  %22 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last15 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %22, i32 0, i32 3
  %23 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last15, align 8
  store %struct.PacketSlabUndoHeap_struct* %23, %struct.PacketSlabUndoHeap_struct** %prev, align 8
  %24 = load i64, i64* %next_size, align 8
  %25 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %prev, align 8
  %call = call %struct.PacketSlabUndoHeap_struct* @packet_slab_undo_heap_new(i64 noundef %24, %struct.PacketSlabUndoHeap_struct* noundef %25)
  %26 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last16 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %26, i32 0, i32 3
  store %struct.PacketSlabUndoHeap_struct* %call, %struct.PacketSlabUndoHeap_struct** %last16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end14, %lor.lhs.false
  %27 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last18 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %27, i32 0, i32 3
  %28 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last18, align 8
  %cmp19 = icmp ne %struct.PacketSlabUndoHeap_struct* %28, null
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  br label %if.end21

if.else:                                          ; preds = %if.end17
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @.str.20, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @__PRETTY_FUNCTION__.packet_slab_undo_stack_insert, i64 0, i64 0)) #8
  unreachable

if.end21:                                         ; preds = %if.then20
  %29 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last22 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %29, i32 0, i32 3
  %30 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last22, align 8
  %heap = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %30, i32 0, i32 2
  %31 = load %struct.PacketSlabUndo*, %struct.PacketSlabUndo** %heap, align 8
  %32 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last23 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %32, i32 0, i32 3
  %33 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last23, align 8
  %count24 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %33, i32 0, i32 1
  %34 = load i64, i64* %count24, align 8
  %inc25 = add i64 %34, 1
  store i64 %inc25, i64* %count24, align 8
  %arrayidx26 = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %31, i64 %34
  %35 = bitcast %struct.PacketSlabUndo* %arrayidx26 to i8*
  %36 = bitcast %struct.PacketSlabUndo* %undo to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  br label %return

return:                                           ; preds = %if.end21, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @max(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %cmp = icmp ugt i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @min(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %a.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %b.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rand_max_dist(i64 noundef %count, i64 noundef %num) #0 {
entry:
  %count.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %rnd = alloca i64, align 8
  store i64 %count, i64* %count.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  %call = call i32 @rand() #9
  %conv = sext i32 %call to i64
  %0 = load i64, i64* %count.addr, align 8
  %rem = urem i64 %conv, %0
  store i64 %rem, i64* %rnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %num.addr, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %num.addr, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %rnd, align 8
  %call2 = call i32 @rand() #9
  %conv3 = sext i32 %call2 to i64
  %3 = load i64, i64* %count.addr, align 8
  %rem4 = urem i64 %conv3, %3
  %call5 = call i64 @max(i64 noundef %2, i64 noundef %rem4)
  store i64 %call5, i64* %rnd, align 8
  br label %while.cond, !llvm.loop !22

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %rnd, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @pick_random_next_packet_from_top_k(%struct.LZMAState* noundef %lzma_state, %struct.TopKPacketFinder_struct* noundef %packet_finder, %struct.LZMAPacket* noundef %packets, i1 noundef zeroext %best) #0 {
entry:
  %retval = alloca i1, align 1
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %packet_finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %packets.addr = alloca %struct.LZMAPacket*, align 8
  %best.addr = alloca i8, align 1
  %next_packet = alloca %struct.LZMAPacket*, align 8
  %count = alloca i64, align 8
  %choice = alloca i64, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.TopKPacketFinder_struct* %packet_finder, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  store %struct.LZMAPacket* %packets, %struct.LZMAPacket** %packets.addr, align 8
  %frombool = zext i1 %best to i8
  store i8 %frombool, i8* %best.addr, align 1
  %0 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %1, i32 0, i32 6
  %2 = load i64, i64* %position, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %0, i64 %2
  store %struct.LZMAPacket* %arrayidx, %struct.LZMAPacket** %next_packet, align 8
  %3 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %4 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %5 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  call void @top_k_packet_finder_find(%struct.TopKPacketFinder_struct* noundef %3, %struct.LZMAState* noundef %4, %struct.LZMAPacket* noundef %5)
  %6 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %call = call i64 @top_k_packet_finder_count(%struct.TopKPacketFinder_struct* noundef %6)
  store i64 %call, i64* %count, align 8
  %7 = load i64, i64* %count, align 8
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %count, align 8
  %call1 = call i64 @rand_max_dist(i64 noundef %8, i64 noundef 8)
  store i64 %call1, i64* %choice, align 8
  %call2 = call i32 @rand() #9
  %rem = srem i32 %call2, 8
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i8, i8* %best.addr, align 1
  %tobool = trunc i8 %9 to i1
  br i1 %tobool, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load i64, i64* %count, align 8
  %sub = sub i64 %10, 1
  store i64 %sub, i64* %choice, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end5
  %11 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %12 = load %struct.LZMAPacket*, %struct.LZMAPacket** %next_packet, align 8
  %call6 = call zeroext i1 @top_k_packet_finder_pop(%struct.TopKPacketFinder_struct* noundef %11, %struct.LZMAPacket* noundef %12)
  br i1 %call6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i64, i64* %choice, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %choice, align 8
  %cmp7 = icmp eq i64 %13, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  store i1 true, i1* %retval, align 1
  br label %return

if.end9:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %while.end, %if.then8, %if.then
  %14 = load i1, i1* %retval, align 1
  ret i1 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @top_k_packet_finder_find(%struct.TopKPacketFinder_struct* noundef %finder, %struct.LZMAState* noundef %lzma_state, %struct.LZMAPacket* noundef %next_packets) #0 {
entry:
  %finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %next_packets.addr = alloca %struct.LZMAPacket*, align 8
  store %struct.TopKPacketFinder_struct* %finder, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.LZMAPacket* %next_packets, %struct.LZMAPacket** %next_packets.addr, align 8
  %0 = load %struct.LZMAPacket*, %struct.LZMAPacket** %next_packets.addr, align 8
  %1 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %next_packets1 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %1, i32 0, i32 2
  store %struct.LZMAPacket* %0, %struct.LZMAPacket** %next_packets1, align 8
  %2 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %2, i32 0, i32 3
  %3 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  call void @max_heap_clear(%struct.MaxHeap_struct* noundef %3)
  %4 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %packet_enumerator = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %4, i32 0, i32 4
  %5 = load %struct.PacketEnumerator_struct*, %struct.PacketEnumerator_struct** %packet_enumerator, align 8
  %6 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %7 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %8 = bitcast %struct.TopKPacketFinder_struct* %7 to i8*
  call void @packet_enumerator_for_each(%struct.PacketEnumerator_struct* noundef %5, %struct.LZMAState* noundef %6, void (i8*, %struct.LZMAState*, i64, i16)* noundef @top_k_packet_finder_callback, i8* noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @top_k_packet_finder_count(%struct.TopKPacketFinder_struct* noundef %finder) #0 {
entry:
  %finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  store %struct.TopKPacketFinder_struct* %finder, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %0 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %0, i32 0, i32 3
  %1 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %call = call i64 @max_heap_count(%struct.MaxHeap_struct* noundef %1)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @top_k_packet_finder_pop(%struct.TopKPacketFinder_struct* noundef %finder, %struct.LZMAPacket* noundef %packet) #0 {
entry:
  %retval = alloca i1, align 1
  %finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %packet.addr = alloca %struct.LZMAPacket*, align 8
  %maximum = alloca i32, align 4
  store %struct.TopKPacketFinder_struct* %finder, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  store %struct.LZMAPacket* %packet, %struct.LZMAPacket** %packet.addr, align 8
  %0 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %0, i32 0, i32 3
  %1 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %call = call zeroext i1 @max_heap_maximum(%struct.MaxHeap_struct* noundef %1, i32* noundef %maximum)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet.addr, align 8
  %3 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %entries = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %3, i32 0, i32 1
  %4 = load %struct.TopKEntry*, %struct.TopKEntry** %entries, align 8
  %5 = load i32, i32* %maximum, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %4, i64 %idxprom
  %packet1 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %arrayidx, i32 0, i32 0
  %6 = bitcast %struct.LZMAPacket* %2 to i8*
  %7 = bitcast %struct.LZMAPacket* %packet1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 %7, i64 12, i1 false)
  %8 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap2 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %8, i32 0, i32 3
  %9 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap2, align 8
  %call3 = call zeroext i1 @max_heap_remove_maximum(%struct.MaxHeap_struct* noundef %9)
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, i1* %retval, align 1
  ret i1 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @validate_long_rep_packet(%struct.LZMAState* noundef %lzma_state, i64 %packet.coerce0, i16 %packet.coerce1) #0 {
entry:
  %packet = alloca %struct.LZMAPacket, align 4
  %coerce = alloca { i64, i16 }, align 4
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %rep_start = alloca i8*, align 8
  %current = alloca i8*, align 8
  %0 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 0
  store i64 %packet.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 1
  store i16 %packet.coerce1, i16* %1, align 4
  %2 = bitcast %struct.LZMAPacket* %packet to i8*
  %3 = bitcast { i64, i16 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  %type = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %packet, i32 0, i32 0
  %4 = load i8, i8* %type, align 4
  %conv = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([116 x i8], [116 x i8]* @.str.18, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.validate_long_rep_packet, i64 0, i64 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8
  %7 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %7, i32 0, i32 6
  %8 = load i64, i64* %position, align 8
  %9 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %9, i32 0, i32 4
  %dist = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %packet, i32 0, i32 1
  %10 = load i32, i32* %dist, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %conv2 = zext i32 %11 to i64
  %sub = sub i64 %8, %conv2
  %sub3 = sub i64 %sub, 1
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %sub3
  store i8* %arrayidx4, i8** %rep_start, align 8
  %12 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data5 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %12, i32 0, i32 0
  %13 = load i8*, i8** %data5, align 8
  %14 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position6 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %14, i32 0, i32 6
  %15 = load i64, i64* %position6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8* %arrayidx7, i8** %current, align 8
  %16 = load i8*, i8** %rep_start, align 8
  %17 = load i8*, i8** %current, align 8
  %len = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %packet, i32 0, i32 2
  %18 = load i16, i16* %len, align 4
  %conv8 = zext i16 %18 to i64
  %call = call i32 @memcmp(i8* noundef %16, i8* noundef %17, i64 noundef %conv8) #10
  %cmp9 = icmp eq i32 %call, 0
  ret i1 %cmp9
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repair_remaining_packets(%struct.PacketSlabNeighbour* noundef %neighbour, %struct.LZMAState* noundef %lzma_state, %struct.EncoderInterface_struct* noundef %enc, %struct.TopKPacketFinder_struct* noundef %packet_finder, %struct.LZMAPacket* noundef %packets) #0 {
entry:
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %packet_finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %packets.addr = alloca %struct.LZMAPacket*, align 8
  %count = alloca i64, align 8
  %packet = alloca %struct.LZMAPacket*, align 8
  %old_packet = alloca %struct.LZMAPacket, align 4
  %tmp = alloca %struct.LZMAPacket, align 4
  %tmp.coerce = alloca { i64, i16 }, align 8
  %tmp24 = alloca %struct.LZMAPacket, align 4
  %tmp.coerce26 = alloca { i64, i16 }, align 8
  %dist_index = alloca i32, align 4
  %.coerce = alloca { i64, i16 }, align 4
  %.coerce40 = alloca { i64, i16 }, align 4
  %old_packet.coerce = alloca { i64, i16 }, align 4
  %.coerce53 = alloca { i64, i16 }, align 4
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store %struct.TopKPacketFinder_struct* %packet_finder, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  store %struct.LZMAPacket* %packets, %struct.LZMAPacket** %packets.addr, align 8
  store i64 0, i64* %count, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end52, %entry
  %0 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %0, i32 0, i32 6
  %1 = load i64, i64* %position, align 8
  %2 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data_size = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %2, i32 0, i32 1
  %3 = load i64, i64* %data_size, align 8
  %cmp = icmp ult i64 %1, %3
  br i1 %cmp, label %while.body, label %while.end54

while.body:                                       ; preds = %while.cond
  %4 = load i64, i64* %count, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %count, align 8
  %5 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %6 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %6, i32 0, i32 6
  %7 = load i64, i64* %position1, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %5, i64 %7
  store %struct.LZMAPacket* %arrayidx, %struct.LZMAPacket** %packet, align 8
  %8 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %9 = bitcast %struct.LZMAPacket* %old_packet to i8*
  %10 = bitcast %struct.LZMAPacket* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  %11 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %type = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %11, i32 0, i32 0
  %12 = load i8, i8* %type, align 4
  %conv = zext i8 %12 to i32
  %cmp2 = icmp eq i32 %conv, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %13 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %type4 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %13, i32 0, i32 0
  %14 = load i8, i8* %type4, align 4
  %conv5 = zext i8 %14 to i32
  %cmp6 = icmp eq i32 %conv5, 1
  br i1 %cmp6, label %if.then, label %if.end28

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %15 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position8 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %17, i32 0, i32 6
  %18 = load i64, i64* %position8, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %16, i64 %18
  %19 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %19 to i32
  %20 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data11 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %20, i32 0, i32 0
  %21 = load i8*, i8** %data11, align 8
  %22 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position12 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %22, i32 0, i32 6
  %23 = load i64, i64* %position12, align 8
  %24 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %24, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 0
  %25 = load i32, i32* %arrayidx13, align 4
  %conv14 = zext i32 %25 to i64
  %sub = sub i64 %23, %conv14
  %sub15 = sub i64 %sub, 1
  %arrayidx16 = getelementptr inbounds i8, i8* %21, i64 %sub15
  %26 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %26 to i32
  %cmp18 = icmp eq i32 %conv10, %conv17
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then
  %27 = load i64, i64* %count, align 8
  %cmp21 = icmp ult i64 %27, 4
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then20
  %28 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %call = call { i64, i16 } @short_rep_packet()
  store { i64, i16 } %call, { i64, i16 }* %tmp.coerce, align 8
  %29 = bitcast %struct.LZMAPacket* %tmp to i8*
  %30 = bitcast { i64, i16 }* %tmp.coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 8 %30, i64 12, i1 false)
  %31 = bitcast %struct.LZMAPacket* %28 to i8*
  %32 = bitcast %struct.LZMAPacket* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 12, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then20
  br label %if.end27

if.else:                                          ; preds = %if.then
  %33 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %call25 = call { i64, i16 } @literal_packet()
  store { i64, i16 } %call25, { i64, i16 }* %tmp.coerce26, align 8
  %34 = bitcast %struct.LZMAPacket* %tmp24 to i8*
  %35 = bitcast { i64, i16 }* %tmp.coerce26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 8 %35, i64 12, i1 false)
  %36 = bitcast %struct.LZMAPacket* %33 to i8*
  %37 = bitcast %struct.LZMAPacket* %tmp24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %lor.lhs.false
  %38 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %type29 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %38, i32 0, i32 0
  %39 = load i8, i8* %type29, align 4
  %conv30 = zext i8 %39 to i32
  %cmp31 = icmp eq i32 %conv30, 4
  br i1 %cmp31, label %if.then33, label %if.end48

if.then33:                                        ; preds = %if.end28
  store i32 0, i32* %dist_index, align 4
  br label %while.cond34

while.cond34:                                     ; preds = %while.body38, %if.then33
  %40 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %41 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %42 = bitcast { i64, i16 }* %.coerce to i8*
  %43 = bitcast %struct.LZMAPacket* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 12, i1 false)
  %44 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce, i32 0, i32 0
  %45 = load i64, i64* %44, align 4
  %46 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce, i32 0, i32 1
  %47 = load i16, i16* %46, align 4
  %call35 = call zeroext i1 @validate_long_rep_packet(%struct.LZMAState* noundef %40, i64 %45, i16 %47)
  br i1 %call35, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond34
  %48 = load i32, i32* %dist_index, align 4
  %cmp36 = icmp ult i32 %48, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond34
  %49 = phi i1 [ false, %while.cond34 ], [ %cmp36, %land.rhs ]
  br i1 %49, label %while.body38, label %while.end

while.body38:                                     ; preds = %land.end
  %50 = load i32, i32* %dist_index, align 4
  %51 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %dist = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %51, i32 0, i32 1
  store i32 %50, i32* %dist, align 4
  %52 = load i32, i32* %dist_index, align 4
  %inc39 = add i32 %52, 1
  store i32 %inc39, i32* %dist_index, align 4
  br label %while.cond34, !llvm.loop !24

while.end:                                        ; preds = %land.end
  %53 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %54 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %55 = bitcast { i64, i16 }* %.coerce40 to i8*
  %56 = bitcast %struct.LZMAPacket* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce40, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce40, i32 0, i32 1
  %60 = load i16, i16* %59, align 4
  %call41 = call zeroext i1 @validate_long_rep_packet(%struct.LZMAState* noundef %53, i64 %58, i16 %60)
  br i1 %call41, label %if.end47, label %if.then42

if.then42:                                        ; preds = %while.end
  %61 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %62 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %63 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %call43 = call i32 @rand() #9
  %rem = srem i32 %call43, 4
  %cmp44 = icmp eq i32 %rem, 0
  %call46 = call zeroext i1 @pick_random_next_packet_from_top_k(%struct.LZMAState* noundef %61, %struct.TopKPacketFinder_struct* noundef %62, %struct.LZMAPacket* noundef %63, i1 noundef zeroext %cmp44)
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %while.end
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end28
  %64 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %call49 = call zeroext i1 @lzma_packet_cmp(%struct.LZMAPacket* noundef %old_packet, %struct.LZMAPacket* noundef %64)
  br i1 %call49, label %if.end52, label %if.then50

if.then50:                                        ; preds = %if.end48
  %65 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %66 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position51 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %66, i32 0, i32 6
  %67 = load i64, i64* %position51, align 8
  %68 = bitcast { i64, i16 }* %old_packet.coerce to i8*
  %69 = bitcast %struct.LZMAPacket* %old_packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 12, i1 false)
  %70 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %old_packet.coerce, i32 0, i32 0
  %71 = load i64, i64* %70, align 4
  %72 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %old_packet.coerce, i32 0, i32 1
  %73 = load i16, i16* %72, align 4
  call void @save_packet_at_position(%struct.PacketSlabNeighbour* noundef %65, i64 %71, i16 %73, i64 noundef %67)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48
  %74 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %75 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %76 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packet, align 8
  %77 = bitcast { i64, i16 }* %.coerce53 to i8*
  %78 = bitcast %struct.LZMAPacket* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce53, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce53, i32 0, i32 1
  %82 = load i16, i16* %81, align 4
  call void @lzma_encode_packet(%struct.LZMAState* noundef %74, %struct.EncoderInterface_struct* noundef %75, i64 %80, i16 %82)
  br label %while.cond, !llvm.loop !25

while.end54:                                      ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @mutate_next_packet(%struct.PacketSlabNeighbour* noundef %neighbour, %struct.LZMAState* noundef %lzma_state, %struct.TopKPacketFinder_struct* noundef %packet_finder, %struct.LZMAPacket* noundef %packets) #0 {
entry:
  %retval = alloca i1, align 1
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  %lzma_state.addr = alloca %struct.LZMAState*, align 8
  %packet_finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %packets.addr = alloca %struct.LZMAPacket*, align 8
  %first_packet = alloca %struct.LZMAPacket*, align 8
  %second_packet = alloca %struct.LZMAPacket*, align 8
  %.coerce = alloca { i64, i16 }, align 4
  %.coerce20 = alloca { i64, i16 }, align 4
  %tmp = alloca %struct.LZMAPacket, align 4
  %tmp.coerce = alloca { i64, i16 }, align 8
  %rep_start = alloca i64, align 8
  %.coerce74 = alloca { i64, i16 }, align 4
  %arrayidx82.coerce = alloca { i64, i16 }, align 4
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  store %struct.LZMAState* %lzma_state, %struct.LZMAState** %lzma_state.addr, align 8
  store %struct.TopKPacketFinder_struct* %packet_finder, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  store %struct.LZMAPacket* %packets, %struct.LZMAPacket** %packets.addr, align 8
  %0 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %1 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %1, i32 0, i32 6
  %2 = load i64, i64* %position, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %0, i64 %2
  store %struct.LZMAPacket* %arrayidx, %struct.LZMAPacket** %first_packet, align 8
  %3 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %3, i32 0, i32 6
  %4 = load i64, i64* %position1, align 8
  %add = add i64 %4, 1
  %5 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data_size = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %5, i32 0, i32 1
  %6 = load i64, i64* %data_size, align 8
  %cmp = icmp ult i64 %add, %6
  br i1 %cmp, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @rand() #9
  %rem = srem i32 %call, 2
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end80

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %8 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position3 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %8, i32 0, i32 6
  %9 = load i64, i64* %position3, align 8
  %add4 = add i64 %9, 1
  %arrayidx5 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %7, i64 %add4
  store %struct.LZMAPacket* %arrayidx5, %struct.LZMAPacket** %second_packet, align 8
  %10 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %type = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %10, i32 0, i32 0
  %11 = load i8, i8* %type, align 4
  %conv = zext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv, 4
  br i1 %cmp6, label %land.lhs.true12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %12 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %type8 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %12, i32 0, i32 0
  %13 = load i8, i8* %type8, align 4
  %conv9 = zext i8 %13 to i32
  %cmp10 = icmp eq i32 %conv9, 2
  br i1 %cmp10, label %land.lhs.true12, label %if.else

land.lhs.true12:                                  ; preds = %lor.lhs.false, %if.then
  %14 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %len = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %14, i32 0, i32 2
  %15 = load i16, i16* %len, align 4
  %conv13 = zext i16 %15 to i32
  %cmp14 = icmp sgt i32 %conv13, 2
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.lhs.true12
  %16 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %17 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %18 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position17 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %18, i32 0, i32 6
  %19 = load i64, i64* %position17, align 8
  %20 = bitcast { i64, i16 }* %.coerce to i8*
  %21 = bitcast %struct.LZMAPacket* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 12, i1 false)
  %22 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce, i32 0, i32 0
  %23 = load i64, i64* %22, align 4
  %24 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce, i32 0, i32 1
  %25 = load i16, i16* %24, align 4
  call void @save_packet_at_position(%struct.PacketSlabNeighbour* noundef %16, i64 %23, i16 %25, i64 noundef %19)
  %26 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %27 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %28 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position18 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %28, i32 0, i32 6
  %29 = load i64, i64* %position18, align 8
  %add19 = add i64 %29, 1
  %30 = bitcast { i64, i16 }* %.coerce20 to i8*
  %31 = bitcast %struct.LZMAPacket* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce20, i32 0, i32 0
  %33 = load i64, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce20, i32 0, i32 1
  %35 = load i16, i16* %34, align 4
  call void @save_packet_at_position(%struct.PacketSlabNeighbour* noundef %26, i64 %33, i16 %35, i64 noundef %add19)
  %36 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %37 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %38 = bitcast %struct.LZMAPacket* %36 to i8*
  %39 = bitcast %struct.LZMAPacket* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %len21 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %40, i32 0, i32 2
  %41 = load i16, i16* %len21, align 4
  %dec = add i16 %41, -1
  store i16 %dec, i16* %len21, align 4
  %42 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %call22 = call { i64, i16 } @literal_packet()
  store { i64, i16 } %call22, { i64, i16 }* %tmp.coerce, align 8
  %43 = bitcast %struct.LZMAPacket* %tmp to i8*
  %44 = bitcast { i64, i16 }* %tmp.coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 8 %44, i64 12, i1 false)
  %45 = bitcast %struct.LZMAPacket* %42 to i8*
  %46 = bitcast %struct.LZMAPacket* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %land.lhs.true12, %lor.lhs.false
  %47 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %type23 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %47, i32 0, i32 0
  %48 = load i8, i8* %type23, align 4
  %conv24 = zext i8 %48 to i32
  %cmp25 = icmp eq i32 %conv24, 1
  br i1 %cmp25, label %if.then32, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.else
  %49 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %type28 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %49, i32 0, i32 0
  %50 = load i8, i8* %type28, align 4
  %conv29 = zext i8 %50 to i32
  %cmp30 = icmp eq i32 %conv29, 3
  br i1 %cmp30, label %if.then32, label %if.end78

if.then32:                                        ; preds = %lor.lhs.false27, %if.else
  %51 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %type33 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %51, i32 0, i32 0
  %52 = load i8, i8* %type33, align 4
  %conv34 = zext i8 %52 to i32
  %cmp35 = icmp eq i32 %conv34, 2
  br i1 %cmp35, label %if.then42, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %if.then32
  %53 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %type38 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %53, i32 0, i32 0
  %54 = load i8, i8* %type38, align 4
  %conv39 = zext i8 %54 to i32
  %cmp40 = icmp eq i32 %conv39, 4
  br i1 %cmp40, label %if.then42, label %if.end77

if.then42:                                        ; preds = %lor.lhs.false37, %if.then32
  %55 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position43 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %55, i32 0, i32 6
  %56 = load i64, i64* %position43, align 8
  %57 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %dist = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %57, i32 0, i32 1
  %58 = load i32, i32* %dist, align 4
  %conv44 = zext i32 %58 to i64
  %sub = sub i64 %56, %conv44
  store i64 %sub, i64* %rep_start, align 8
  %59 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %type45 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %59, i32 0, i32 0
  %60 = load i8, i8* %type45, align 4
  %conv46 = zext i8 %60 to i32
  %cmp47 = icmp eq i32 %conv46, 4
  br i1 %cmp47, label %if.then49, label %if.end

if.then49:                                        ; preds = %if.then42
  %61 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position50 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %61, i32 0, i32 6
  %62 = load i64, i64* %position50, align 8
  %63 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %dists = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %63, i32 0, i32 4
  %64 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %dist51 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %64, i32 0, i32 1
  %65 = load i32, i32* %dist51, align 4
  %idxprom = zext i32 %65 to i64
  %arrayidx52 = getelementptr inbounds [4 x i32], [4 x i32]* %dists, i64 0, i64 %idxprom
  %66 = load i32, i32* %arrayidx52, align 4
  %conv53 = zext i32 %66 to i64
  %sub54 = sub i64 %62, %conv53
  store i64 %sub54, i64* %rep_start, align 8
  br label %if.end

if.end:                                           ; preds = %if.then49, %if.then42
  %67 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %len55 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %67, i32 0, i32 2
  %68 = load i16, i16* %len55, align 4
  %conv56 = zext i16 %68 to i32
  %cmp57 = icmp slt i32 %conv56, 273
  br i1 %cmp57, label %land.lhs.true59, label %if.end76

land.lhs.true59:                                  ; preds = %if.end
  %69 = load i64, i64* %rep_start, align 8
  %cmp60 = icmp ugt i64 %69, 0
  br i1 %cmp60, label %land.lhs.true62, label %if.end76

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %70 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %70, i32 0, i32 0
  %71 = load i8*, i8** %data, align 8
  %72 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position63 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %72, i32 0, i32 6
  %73 = load i64, i64* %position63, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %71, i64 %73
  %74 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %74 to i32
  %75 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %data66 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %75, i32 0, i32 0
  %76 = load i8*, i8** %data66, align 8
  %77 = load i64, i64* %rep_start, align 8
  %sub67 = sub i64 %77, 1
  %arrayidx68 = getelementptr inbounds i8, i8* %76, i64 %sub67
  %78 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %78 to i32
  %cmp70 = icmp eq i32 %conv65, %conv69
  br i1 %cmp70, label %if.then72, label %if.end76

if.then72:                                        ; preds = %land.lhs.true62
  %79 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %80 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %81 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position73 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %81, i32 0, i32 6
  %82 = load i64, i64* %position73, align 8
  %83 = bitcast { i64, i16 }* %.coerce74 to i8*
  %84 = bitcast %struct.LZMAPacket* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce74, i32 0, i32 0
  %86 = load i64, i64* %85, align 4
  %87 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %.coerce74, i32 0, i32 1
  %88 = load i16, i16* %87, align 4
  call void @save_packet_at_position(%struct.PacketSlabNeighbour* noundef %79, i64 %86, i16 %88, i64 noundef %82)
  %89 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %90 = load %struct.LZMAPacket*, %struct.LZMAPacket** %second_packet, align 8
  %91 = bitcast %struct.LZMAPacket* %89 to i8*
  %92 = bitcast %struct.LZMAPacket* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 12, i1 false)
  %93 = load %struct.LZMAPacket*, %struct.LZMAPacket** %first_packet, align 8
  %len75 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %93, i32 0, i32 2
  %94 = load i16, i16* %len75, align 4
  %inc = add i16 %94, 1
  store i16 %inc, i16* %len75, align 4
  store i1 true, i1* %retval, align 1
  br label %return

if.end76:                                         ; preds = %land.lhs.true62, %land.lhs.true59, %if.end
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %lor.lhs.false37
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %lor.lhs.false27
  br label %if.end79

if.end79:                                         ; preds = %if.end78
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %land.lhs.true, %entry
  %95 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %96 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %97 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position81 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %97, i32 0, i32 6
  %98 = load i64, i64* %position81, align 8
  %arrayidx82 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %96, i64 %98
  %99 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %position83 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %99, i32 0, i32 6
  %100 = load i64, i64* %position83, align 8
  %101 = bitcast { i64, i16 }* %arrayidx82.coerce to i8*
  %102 = bitcast %struct.LZMAPacket* %arrayidx82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 12, i1 false)
  %103 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx82.coerce, i32 0, i32 0
  %104 = load i64, i64* %103, align 4
  %105 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %arrayidx82.coerce, i32 0, i32 1
  %106 = load i16, i16* %105, align 4
  call void @save_packet_at_position(%struct.PacketSlabNeighbour* noundef %95, i64 %104, i16 %106, i64 noundef %100)
  %107 = load %struct.LZMAState*, %struct.LZMAState** %lzma_state.addr, align 8
  %108 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %packet_finder.addr, align 8
  %109 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets.addr, align 8
  %call84 = call zeroext i1 @pick_random_next_packet_from_top_k(%struct.LZMAState* noundef %107, %struct.TopKPacketFinder_struct* noundef %108, %struct.LZMAPacket* noundef %109, i1 noundef zeroext false)
  br i1 %call84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.end80
  store i1 true, i1* %retval, align 1
  br label %return

if.end86:                                         ; preds = %if.end80
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end86, %if.then85, %if.then72, %if.then16
  %110 = load i1, i1* %retval, align 1
  ret i1 %110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perplexity_encoder_new(%struct.EncoderInterface_struct* noundef %enc, i64* noundef %perplexity) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %perplexity.addr = alloca i64*, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i64* %perplexity, i64** %perplexity.addr, align 8
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %encode_bit = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 0
  store void (%struct.EncoderInterface_struct*, i1, i16)* @perplexity_encoder_encode_bit, void (%struct.EncoderInterface_struct*, i1, i16)** %encode_bit, align 8
  %1 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %encode_direct_bits = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %1, i32 0, i32 1
  store void (%struct.EncoderInterface_struct*, i32, i32)* @perplexity_encoder_encode_direct_bits, void (%struct.EncoderInterface_struct*, i32, i32)** %encode_direct_bits, align 8
  %2 = load i64*, i64** %perplexity.addr, align 8
  %3 = bitcast i64* %2 to i8*
  %4 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %4, i32 0, i32 2
  store i8* %3, i8** %private_data, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @packet_slab_undo_stack_apply(%struct.PacketSlabUndoStack* noundef %undo_stack, %struct.PacketSlab_struct* noundef %slab) #0 {
entry:
  %undo_stack.addr = alloca %struct.PacketSlabUndoStack*, align 8
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  %undo_heap = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  %packets = alloca %struct.LZMAPacket*, align 8
  %undo = alloca %struct.PacketSlabUndo, align 8
  store %struct.PacketSlabUndoStack* %undo_stack, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %0, i32 0, i32 3
  %1 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last, align 8
  %cmp = icmp ne %struct.PacketSlabUndoHeap_struct* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last1 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %2, i32 0, i32 3
  %3 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %last1, align 8
  store %struct.PacketSlabUndoHeap_struct* %3, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %4 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %prev = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %4, i32 0, i32 3
  %5 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %prev, align 8
  %6 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %last2 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %6, i32 0, i32 3
  store %struct.PacketSlabUndoHeap_struct* %5, %struct.PacketSlabUndoHeap_struct** %last2, align 8
  %7 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %8 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  call void @packet_slab_undo_heap_apply(%struct.PacketSlabUndoHeap_struct* noundef %7, %struct.PacketSlab_struct* noundef %8)
  %9 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  call void @packet_slab_undo_heap_free(%struct.PacketSlabUndoHeap_struct* noundef %9)
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %10 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %call = call %struct.LZMAPacket* @packet_slab_packets(%struct.PacketSlab_struct* noundef %10)
  store %struct.LZMAPacket* %call, %struct.LZMAPacket** %packets, align 8
  br label %while.cond3

while.cond3:                                      ; preds = %while.body5, %while.end
  %11 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %11, i32 0, i32 1
  %12 = load i64, i64* %count, align 8
  %cmp4 = icmp ugt i64 %12, 0
  br i1 %cmp4, label %while.body5, label %while.end8

while.body5:                                      ; preds = %while.cond3
  %13 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %stack = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %13, i32 0, i32 2
  %14 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %count6 = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %14, i32 0, i32 1
  %15 = load i64, i64* %count6, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %count6, align 8
  %arrayidx = getelementptr inbounds [16 x %struct.PacketSlabUndo], [16 x %struct.PacketSlabUndo]* %stack, i64 0, i64 %dec
  %16 = bitcast %struct.PacketSlabUndo* %undo to i8*
  %17 = bitcast %struct.PacketSlabUndo* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %position = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %undo, i32 0, i32 0
  %19 = load i64, i64* %position, align 8
  %arrayidx7 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %18, i64 %19
  %old_packet = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %undo, i32 0, i32 1
  %20 = bitcast %struct.LZMAPacket* %arrayidx7 to i8*
  %21 = bitcast %struct.LZMAPacket* %old_packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 8 %21, i64 12, i1 false)
  br label %while.cond3, !llvm.loop !27

while.end8:                                       ; preds = %while.cond3
  %22 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %total_count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %22, i32 0, i32 0
  store i64 0, i64* %total_count, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packet_slab_neighbour_undo_count(%struct.PacketSlabNeighbour* noundef %neighbour) #0 {
entry:
  %neighbour.addr = alloca %struct.PacketSlabNeighbour*, align 8
  store %struct.PacketSlabNeighbour* %neighbour, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %0 = load %struct.PacketSlabNeighbour*, %struct.PacketSlabNeighbour** %neighbour.addr, align 8
  %undo_stack = getelementptr inbounds %struct.PacketSlabNeighbour, %struct.PacketSlabNeighbour* %0, i32 0, i32 3
  %call = call i64 @packet_slab_undo_stack_count(%struct.PacketSlabUndoStack* noundef %undo_stack)
  ret i64 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @packet_slab_undo_stack_count(%struct.PacketSlabUndoStack* noundef %undo_stack) #0 {
entry:
  %undo_stack.addr = alloca %struct.PacketSlabUndoStack*, align 8
  store %struct.PacketSlabUndoStack* %undo_stack, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %0 = load %struct.PacketSlabUndoStack*, %struct.PacketSlabUndoStack** %undo_stack.addr, align 8
  %total_count = getelementptr inbounds %struct.PacketSlabUndoStack, %struct.PacketSlabUndoStack* %0, i32 0, i32 0
  %1 = load i64, i64* %total_count, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.PacketSlabUndoHeap_struct* @packet_slab_undo_heap_new(i64 noundef %size, %struct.PacketSlabUndoHeap_struct* noundef %prev) #0 {
entry:
  %retval = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  %size.addr = alloca i64, align 8
  %prev.addr = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  %undo_heap = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  store i64 %size, i64* %size.addr, align 8
  store %struct.PacketSlabUndoHeap_struct* %prev, %struct.PacketSlabUndoHeap_struct** %prev.addr, align 8
  %call = call noalias i8* @malloc(i64 noundef 32) #9
  %0 = bitcast i8* %call to %struct.PacketSlabUndoHeap_struct*
  store %struct.PacketSlabUndoHeap_struct* %0, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %1 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %cmp = icmp eq %struct.PacketSlabUndoHeap_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.PacketSlabUndoHeap_struct* null, %struct.PacketSlabUndoHeap_struct** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8
  %3 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %size1 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %3, i32 0, i32 0
  store i64 %2, i64* %size1, align 8
  %4 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %count = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %4, i32 0, i32 1
  store i64 0, i64* %count, align 8
  %5 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %prev.addr, align 8
  %6 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %prev2 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %6, i32 0, i32 3
  store %struct.PacketSlabUndoHeap_struct* %5, %struct.PacketSlabUndoHeap_struct** %prev2, align 8
  %7 = load i64, i64* %size.addr, align 8
  %mul = mul i64 24, %7
  %call3 = call noalias i8* @malloc(i64 noundef %mul) #9
  %8 = bitcast i8* %call3 to %struct.PacketSlabUndo*
  %9 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %heap = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %9, i32 0, i32 2
  store %struct.PacketSlabUndo* %8, %struct.PacketSlabUndo** %heap, align 8
  %10 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %heap4 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %10, i32 0, i32 2
  %11 = load %struct.PacketSlabUndo*, %struct.PacketSlabUndo** %heap4, align 8
  %cmp5 = icmp eq %struct.PacketSlabUndo* %11, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %12 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  %13 = bitcast %struct.PacketSlabUndoHeap_struct* %12 to i8*
  call void @free(i8* noundef %13) #9
  store %struct.PacketSlabUndoHeap_struct* null, %struct.PacketSlabUndoHeap_struct** %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %14 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap, align 8
  store %struct.PacketSlabUndoHeap_struct* %14, %struct.PacketSlabUndoHeap_struct** %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %15 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %retval, align 8
  ret %struct.PacketSlabUndoHeap_struct* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_slab_undo_heap_free(%struct.PacketSlabUndoHeap_struct* noundef %undo_heap) #0 {
entry:
  %undo_heap.addr = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  store %struct.PacketSlabUndoHeap_struct* %undo_heap, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  %0 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  %heap = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %0, i32 0, i32 2
  %1 = load %struct.PacketSlabUndo*, %struct.PacketSlabUndo** %heap, align 8
  %2 = bitcast %struct.PacketSlabUndo* %1 to i8*
  call void @free(i8* noundef %2) #9
  %3 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  %4 = bitcast %struct.PacketSlabUndoHeap_struct* %3 to i8*
  call void @free(i8* noundef %4) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_slab_undo_heap_apply(%struct.PacketSlabUndoHeap_struct* noundef %undo_heap, %struct.PacketSlab_struct* noundef %slab) #0 {
entry:
  %undo_heap.addr = alloca %struct.PacketSlabUndoHeap_struct*, align 8
  %slab.addr = alloca %struct.PacketSlab_struct*, align 8
  %packets = alloca %struct.LZMAPacket*, align 8
  %undo = alloca %struct.PacketSlabUndo, align 8
  store %struct.PacketSlabUndoHeap_struct* %undo_heap, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  store %struct.PacketSlab_struct* %slab, %struct.PacketSlab_struct** %slab.addr, align 8
  %0 = load %struct.PacketSlab_struct*, %struct.PacketSlab_struct** %slab.addr, align 8
  %call = call %struct.LZMAPacket* @packet_slab_packets(%struct.PacketSlab_struct* noundef %0)
  store %struct.LZMAPacket* %call, %struct.LZMAPacket** %packets, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  %count = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %1, i32 0, i32 1
  %2 = load i64, i64* %count, align 8
  %cmp = icmp ugt i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  %heap = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %3, i32 0, i32 2
  %4 = load %struct.PacketSlabUndo*, %struct.PacketSlabUndo** %heap, align 8
  %5 = load %struct.PacketSlabUndoHeap_struct*, %struct.PacketSlabUndoHeap_struct** %undo_heap.addr, align 8
  %count1 = getelementptr inbounds %struct.PacketSlabUndoHeap_struct, %struct.PacketSlabUndoHeap_struct* %5, i32 0, i32 1
  %6 = load i64, i64* %count1, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %count1, align 8
  %arrayidx = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %4, i64 %dec
  %7 = bitcast %struct.PacketSlabUndo* %undo to i8*
  %8 = bitcast %struct.PacketSlabUndo* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = load %struct.LZMAPacket*, %struct.LZMAPacket** %packets, align 8
  %position = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %undo, i32 0, i32 0
  %10 = load i64, i64* %position, align 8
  %arrayidx2 = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %9, i64 %10
  %old_packet = getelementptr inbounds %struct.PacketSlabUndo, %struct.PacketSlabUndo* %undo, i32 0, i32 1
  %11 = bitcast %struct.LZMAPacket* %arrayidx2 to i8*
  %12 = bitcast %struct.LZMAPacket* %old_packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 %12, i64 12, i1 false)
  br label %while.cond, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perplexity_encoder_encode_bit(%struct.EncoderInterface_struct* noundef %enc, i1 noundef zeroext %bit, i16 noundef zeroext %prob) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %bit.addr = alloca i8, align 1
  %prob.addr = alloca i16, align 2
  %perplexity = alloca i64*, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %frombool = zext i1 %bit to i8
  store i8 %frombool, i8* %bit.addr, align 1
  store i16 %prob, i16* %prob.addr, align 2
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 2
  %1 = load i8*, i8** %private_data, align 8
  %2 = bitcast i8* %1 to i64*
  store i64* %2, i64** %perplexity, align 8
  %3 = load i8, i8* %bit.addr, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i16, i16* %prob.addr, align 2
  %conv = zext i16 %4 to i32
  %sub = sub nsw i32 2048, %conv
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i16, i16* %prob.addr, align 2
  %conv1 = zext i16 %5 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %conv1, %cond.false ]
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [2048 x i64], [2048 x i64]* @LOG2_LOOKUP, i64 0, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %7 = load i64*, i64** %perplexity, align 8
  %8 = load i64, i64* %7, align 8
  %add = add i64 %8, %6
  store i64 %add, i64* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perplexity_encoder_encode_direct_bits(%struct.EncoderInterface_struct* noundef %enc, i32 noundef %bits, i32 noundef %num_bits) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %bits.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %perplexity = alloca i64*, align 8
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store i32 %num_bits, i32* %num_bits.addr, align 4
  %0 = load i32, i32* %bits.addr, align 4
  %1 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %1, i32 0, i32 2
  %2 = load i8*, i8** %private_data, align 8
  %3 = bitcast i8* %2 to i64*
  store i64* %3, i64** %perplexity, align 8
  %4 = load i32, i32* %num_bits.addr, align 4
  %shl = shl i32 %4, 11
  %conv = zext i32 %shl to i64
  %5 = load i64*, i64** %perplexity, align 8
  %6 = load i64, i64* %5, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_encoder_shift_low(%struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %data = alloca %struct.RangeEncoderData*, align 8
  %output = alloca %struct.OutputInterface_struct*, align 8
  %high_bytes = alloca i32, align 4
  %low_bytes = alloca i32, align 4
  %temp = alloca i8, align 1
  %out_byte = alloca i8, align 1
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 2
  %1 = load i8*, i8** %private_data, align 8
  %2 = bitcast i8* %1 to %struct.RangeEncoderData*
  store %struct.RangeEncoderData* %2, %struct.RangeEncoderData** %data, align 8
  %3 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %output1 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %3, i32 0, i32 0
  %4 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output1, align 8
  store %struct.OutputInterface_struct* %4, %struct.OutputInterface_struct** %output, align 8
  %5 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %5, i32 0, i32 1
  %6 = load i64, i64* %low, align 8
  %shr = lshr i64 %6, 32
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %high_bytes, align 4
  %7 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low2 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %7, i32 0, i32 1
  %8 = load i64, i64* %low2, align 8
  %and = and i64 %8, 4294967295
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %low_bytes, align 4
  %9 = load i32, i32* %low_bytes, align 4
  %cmp = icmp ult i32 %9, -16777216
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %high_bytes, align 4
  %cmp5 = icmp ne i32 %10, 0
  br i1 %cmp5, label %if.then, label %if.end21

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %cache = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %11, i32 0, i32 3
  %12 = load i8, i8* %cache, align 4
  store i8 %12, i8* %temp, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %13 = load i8, i8* %temp, align 1
  %conv7 = zext i8 %13 to i32
  %14 = load i32, i32* %high_bytes, align 4
  %and8 = and i32 %14, 255
  %add = add i32 %conv7, %and8
  %conv9 = trunc i32 %add to i8
  store i8 %conv9, i8* %out_byte, align 1
  %15 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output, align 8
  %write = getelementptr inbounds %struct.OutputInterface_struct, %struct.OutputInterface_struct* %15, i32 0, i32 0
  %write10 = bitcast {}** %write to i1 (%struct.OutputInterface_struct*, i8*, i64)**
  %16 = load i1 (%struct.OutputInterface_struct*, i8*, i64)*, i1 (%struct.OutputInterface_struct*, i8*, i64)** %write10, align 8
  %17 = load %struct.OutputInterface_struct*, %struct.OutputInterface_struct** %output, align 8
  %call = call zeroext i1 %16(%struct.OutputInterface_struct* noundef %17, i8* noundef %out_byte, i64 noundef 1)
  br i1 %call, label %if.end, label %if.then11

if.then11:                                        ; preds = %do.body
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i8, i8* %out_byte, align 1
  %conv12 = zext i8 %19 to i32
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %18, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 noundef %conv12)
  br label %if.end

if.end:                                           ; preds = %if.then11, %do.body
  store i8 -1, i8* %temp, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %20 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %cache_size = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %20, i32 0, i32 4
  %21 = load i64, i64* %cache_size, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %cache_size, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %do.body, label %do.end, !llvm.loop !29

do.end:                                           ; preds = %do.cond
  %22 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low16 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %22, i32 0, i32 1
  %23 = load i64, i64* %low16, align 8
  %shr17 = lshr i64 %23, 24
  %and18 = and i64 %shr17, 255
  %conv19 = trunc i64 %and18 to i8
  %24 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %cache20 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %24, i32 0, i32 3
  store i8 %conv19, i8* %cache20, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end, %lor.lhs.false
  %25 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %cache_size22 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %25, i32 0, i32 4
  %26 = load i64, i64* %cache_size22, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %cache_size22, align 8
  %27 = load i32, i32* %low_bytes, align 4
  %shl = shl i32 %27, 8
  %conv23 = zext i32 %shl to i64
  %28 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low24 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %28, i32 0, i32 1
  store i64 %conv23, i64* %low24, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_encoder_flush_data(%struct.EncoderInterface_struct* noundef %enc) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %i = alloca i32, align 4
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @range_encoder_shift_low(%struct.EncoderInterface_struct* noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !30

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_encoder_encode_bit(%struct.EncoderInterface_struct* noundef %enc, i1 noundef zeroext %bit, i16 noundef zeroext %prob) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %bit.addr = alloca i8, align 1
  %prob.addr = alloca i16, align 2
  %data = alloca %struct.RangeEncoderData*, align 8
  %new_bound = alloca i32, align 4
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  %frombool = zext i1 %bit to i8
  store i8 %frombool, i8* %bit.addr, align 1
  store i16 %prob, i16* %prob.addr, align 2
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 2
  %1 = load i8*, i8** %private_data, align 8
  %2 = bitcast i8* %1 to %struct.RangeEncoderData*
  store %struct.RangeEncoderData* %2, %struct.RangeEncoderData** %data, align 8
  %3 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %3, i32 0, i32 2
  %4 = load i32, i32* %range, align 8
  %shr = lshr i32 %4, 11
  %5 = load i16, i16* %prob.addr, align 2
  %conv = zext i16 %5 to i32
  %mul = mul i32 %shr, %conv
  store i32 %mul, i32* %new_bound, align 4
  %6 = load i8, i8* %bit.addr, align 1
  %tobool = trunc i8 %6 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %new_bound, align 4
  %conv1 = zext i32 %7 to i64
  %8 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %8, i32 0, i32 1
  %9 = load i64, i64* %low, align 8
  %add = add i64 %9, %conv1
  store i64 %add, i64* %low, align 8
  %10 = load i32, i32* %new_bound, align 4
  %11 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range2 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %11, i32 0, i32 2
  %12 = load i32, i32* %range2, align 8
  %sub = sub i32 %12, %10
  store i32 %sub, i32* %range2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %new_bound, align 4
  %14 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range3 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %14, i32 0, i32 2
  store i32 %13, i32* %range3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range4 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %15, i32 0, i32 2
  %16 = load i32, i32* %range4, align 8
  %and = and i32 %16, -16777216
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range6 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %17, i32 0, i32 2
  %18 = load i32, i32* %range6, align 8
  %shl = shl i32 %18, 8
  store i32 %shl, i32* %range6, align 8
  %19 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @range_encoder_shift_low(%struct.EncoderInterface_struct* noundef %19)
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_encoder_encode_direct_bits(%struct.EncoderInterface_struct* noundef %enc, i32 noundef %bits, i32 noundef %num_bits) #0 {
entry:
  %enc.addr = alloca %struct.EncoderInterface_struct*, align 8
  %bits.addr = alloca i32, align 4
  %num_bits.addr = alloca i32, align 4
  %data = alloca %struct.RangeEncoderData*, align 8
  %bit = alloca i8, align 1
  store %struct.EncoderInterface_struct* %enc, %struct.EncoderInterface_struct** %enc.addr, align 8
  store i32 %bits, i32* %bits.addr, align 4
  store i32 %num_bits, i32* %num_bits.addr, align 4
  %0 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  %private_data = getelementptr inbounds %struct.EncoderInterface_struct, %struct.EncoderInterface_struct* %0, i32 0, i32 2
  %1 = load i8*, i8** %private_data, align 8
  %2 = bitcast i8* %1 to %struct.RangeEncoderData*
  store %struct.RangeEncoderData* %2, %struct.RangeEncoderData** %data, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load i32, i32* %bits.addr, align 4
  %4 = load i32, i32* %num_bits.addr, align 4
  %sub = sub i32 %4, 1
  %shl = shl i32 1, %sub
  %and = and i32 %3, %shl
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  store i8 %frombool, i8* %bit, align 1
  %5 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %5, i32 0, i32 2
  %6 = load i32, i32* %range, align 8
  %shr = lshr i32 %6, 1
  store i32 %shr, i32* %range, align 8
  %7 = load i8, i8* %bit, align 1
  %tobool1 = trunc i8 %7 to i1
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %8 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range2 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %8, i32 0, i32 2
  %9 = load i32, i32* %range2, align 8
  %conv = zext i32 %9 to i64
  %10 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %low = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %10, i32 0, i32 1
  %11 = load i64, i64* %low, align 8
  %add = add i64 %11, %conv
  store i64 %add, i64* %low, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %12 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range3 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %12, i32 0, i32 2
  %13 = load i32, i32* %range3, align 8
  %and4 = and i32 %13, -16777216
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  %14 = load %struct.RangeEncoderData*, %struct.RangeEncoderData** %data, align 8
  %range7 = getelementptr inbounds %struct.RangeEncoderData, %struct.RangeEncoderData* %14, i32 0, i32 2
  %15 = load i32, i32* %range7, align 8
  %shl8 = shl i32 %15, 8
  store i32 %shl8, i32* %range7, align 8
  %16 = load %struct.EncoderInterface_struct*, %struct.EncoderInterface_struct** %enc.addr, align 8
  call void @range_encoder_shift_low(%struct.EncoderInterface_struct* noundef %16)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  %17 = load i32, i32* %num_bits.addr, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %num_bits.addr, align 4
  %tobool10 = icmp ne i32 %dec, 0
  br i1 %tobool10, label %do.body, label %do.end, !llvm.loop !32

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memoize_bigram_positions(%struct.SubstringEnumerator_struct* noundef %em) #0 {
entry:
  %em.addr = alloca %struct.SubstringEnumerator_struct*, align 8
  %data = alloca i8*, align 8
  %data_size = alloca i64, align 8
  %i = alloca i64, align 8
  %i8 = alloca i32, align 4
  %j = alloca i32, align 4
  %fills = alloca [256 x [256 x i32]], align 16
  %i34 = alloca i64, align 8
  %first = alloca i8, align 1
  %second = alloca i8, align 1
  %offset = alloca i64, align 8
  store %struct.SubstringEnumerator_struct* %em, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %0 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data1 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %0, i32 0, i32 0
  %1 = load i8*, i8** %data1, align 8
  store i8* %1, i8** %data, align 8
  %2 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %data_size2 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %2, i32 0, i32 1
  %3 = load i64, i64* %data_size2, align 8
  store i64 %3, i64* %data_size, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %data_size, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_sizes = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %6, i32 0, i32 5
  %7 = load i8*, i8** %data, align 8
  %8 = load i64, i64* %i, align 8
  %sub = sub i64 %8, 1
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %sub
  %9 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %9 to i64
  %arrayidx3 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_sizes, i64 0, i64 %idxprom
  %10 = load i8*, i8** %data, align 8
  %11 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %11
  %12 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = zext i8 %12 to i64
  %arrayidx6 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx3, i64 0, i64 %idxprom5
  %13 = load i64, i64* %arrayidx6, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc7 = add i64 %14, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i8, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc31, %for.end
  %15 = load i32, i32* %i8, align 4
  %cmp10 = icmp slt i32 %15, 65536
  br i1 %cmp10, label %for.body11, label %for.end33

for.body11:                                       ; preds = %for.cond9
  %16 = load i32, i32* %i8, align 4
  %sub12 = sub nsw i32 %16, 1
  store i32 %sub12, i32* %j, align 4
  %17 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_offsets = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %17, i32 0, i32 4
  %18 = load i32, i32* %j, align 4
  %rem = srem i32 %18, 256
  %idxprom13 = sext i32 %rem to i64
  %arrayidx14 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_offsets, i64 0, i64 %idxprom13
  %19 = load i32, i32* %j, align 4
  %div = sdiv i32 %19, 256
  %idxprom15 = sext i32 %div to i64
  %arrayidx16 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx14, i64 0, i64 %idxprom15
  %20 = load i64, i64* %arrayidx16, align 8
  %21 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_sizes17 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %21, i32 0, i32 5
  %22 = load i32, i32* %j, align 4
  %rem18 = srem i32 %22, 256
  %idxprom19 = sext i32 %rem18 to i64
  %arrayidx20 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_sizes17, i64 0, i64 %idxprom19
  %23 = load i32, i32* %j, align 4
  %div21 = sdiv i32 %23, 256
  %idxprom22 = sext i32 %div21 to i64
  %arrayidx23 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx20, i64 0, i64 %idxprom22
  %24 = load i64, i64* %arrayidx23, align 8
  %add = add i64 %20, %24
  %25 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_offsets24 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %25, i32 0, i32 4
  %26 = load i32, i32* %i8, align 4
  %rem25 = srem i32 %26, 256
  %idxprom26 = sext i32 %rem25 to i64
  %arrayidx27 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_offsets24, i64 0, i64 %idxprom26
  %27 = load i32, i32* %i8, align 4
  %div28 = sdiv i32 %27, 256
  %idxprom29 = sext i32 %div28 to i64
  %arrayidx30 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx27, i64 0, i64 %idxprom29
  store i64 %add, i64* %arrayidx30, align 8
  br label %for.inc31

for.inc31:                                        ; preds = %for.body11
  %28 = load i32, i32* %i8, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, i32* %i8, align 4
  br label %for.cond9, !llvm.loop !34

for.end33:                                        ; preds = %for.cond9
  %29 = bitcast [256 x [256 x i32]]* %fills to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 262144, i1 false)
  store i64 1, i64* %i34, align 8
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc58, %for.end33
  %30 = load i64, i64* %i34, align 8
  %31 = load i64, i64* %data_size, align 8
  %cmp36 = icmp ult i64 %30, %31
  br i1 %cmp36, label %for.body37, label %for.end60

for.body37:                                       ; preds = %for.cond35
  %32 = load i8*, i8** %data, align 8
  %33 = load i64, i64* %i34, align 8
  %sub38 = sub i64 %33, 1
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 %sub38
  %34 = load i8, i8* %arrayidx39, align 1
  store i8 %34, i8* %first, align 1
  %35 = load i8*, i8** %data, align 8
  %36 = load i64, i64* %i34, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %35, i64 %36
  %37 = load i8, i8* %arrayidx40, align 1
  store i8 %37, i8* %second, align 1
  %38 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_offsets41 = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %38, i32 0, i32 4
  %39 = load i8, i8* %first, align 1
  %idxprom42 = zext i8 %39 to i64
  %arrayidx43 = getelementptr inbounds [256 x [256 x i64]], [256 x [256 x i64]]* %bigram_offsets41, i64 0, i64 %idxprom42
  %40 = load i8, i8* %second, align 1
  %idxprom44 = zext i8 %40 to i64
  %arrayidx45 = getelementptr inbounds [256 x i64], [256 x i64]* %arrayidx43, i64 0, i64 %idxprom44
  %41 = load i64, i64* %arrayidx45, align 8
  %42 = load i8, i8* %first, align 1
  %idxprom46 = zext i8 %42 to i64
  %arrayidx47 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %fills, i64 0, i64 %idxprom46
  %43 = load i8, i8* %second, align 1
  %idxprom48 = zext i8 %43 to i64
  %arrayidx49 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx47, i64 0, i64 %idxprom48
  %44 = load i32, i32* %arrayidx49, align 4
  %conv = sext i32 %44 to i64
  %add50 = add i64 %41, %conv
  store i64 %add50, i64* %offset, align 8
  %45 = load i64, i64* %i34, align 8
  %sub51 = sub i64 %45, 1
  %46 = load %struct.SubstringEnumerator_struct*, %struct.SubstringEnumerator_struct** %em.addr, align 8
  %bigram_positions = getelementptr inbounds %struct.SubstringEnumerator_struct, %struct.SubstringEnumerator_struct* %46, i32 0, i32 6
  %47 = load i64*, i64** %bigram_positions, align 8
  %48 = load i64, i64* %offset, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %sub51, i64* %arrayidx52, align 8
  %49 = load i8, i8* %first, align 1
  %idxprom53 = zext i8 %49 to i64
  %arrayidx54 = getelementptr inbounds [256 x [256 x i32]], [256 x [256 x i32]]* %fills, i64 0, i64 %idxprom53
  %50 = load i8, i8* %second, align 1
  %idxprom55 = zext i8 %50 to i64
  %arrayidx56 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx54, i64 0, i64 %idxprom55
  %51 = load i32, i32* %arrayidx56, align 4
  %inc57 = add nsw i32 %51, 1
  store i32 %inc57, i32* %arrayidx56, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body37
  %52 = load i64, i64* %i34, align 8
  %inc59 = add i64 %52, 1
  store i64 %inc59, i64* %i34, align 8
  br label %for.cond35, !llvm.loop !35

for.end60:                                        ; preds = %for.cond35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sign(float noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load float, float* %x.addr, align 4
  %cmp1 = fcmp ogt float %1, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @top_k_entry_comparator(i8* noundef %user_data, i32 noundef %a, i32 noundef %b) #0 {
entry:
  %user_data.addr = alloca i8*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %finder = alloca %struct.TopKPacketFinder_struct*, align 8
  %entry_a = alloca %struct.TopKEntry*, align 8
  %entry_b = alloca %struct.TopKEntry*, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.TopKPacketFinder_struct*
  store %struct.TopKPacketFinder_struct* %1, %struct.TopKPacketFinder_struct** %finder, align 8
  %2 = load i32, i32* %a.addr, align 4
  %conv = zext i32 %2 to i64
  %3 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %size = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %3, i32 0, i32 0
  %4 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %conv, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.25, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.top_k_entry_comparator, i64 0, i64 0)) #8
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %b.addr, align 4
  %conv2 = zext i32 %5 to i64
  %6 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %size3 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %6, i32 0, i32 0
  %7 = load i64, i64* %size3, align 8
  %cmp4 = icmp ult i64 %conv2, %7
  br i1 %cmp4, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end
  br label %if.end8

if.else7:                                         ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.25, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.top_k_entry_comparator, i64 0, i64 0)) #8
  unreachable

if.end8:                                          ; preds = %if.then6
  %8 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %entries = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %8, i32 0, i32 1
  %9 = load %struct.TopKEntry*, %struct.TopKEntry** %entries, align 8
  %10 = load i32, i32* %a.addr, align 4
  %idxprom = zext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %9, i64 %idxprom
  store %struct.TopKEntry* %arrayidx, %struct.TopKEntry** %entry_a, align 8
  %11 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %entries9 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %11, i32 0, i32 1
  %12 = load %struct.TopKEntry*, %struct.TopKEntry** %entries9, align 8
  %13 = load i32, i32* %b.addr, align 4
  %idxprom10 = zext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %12, i64 %idxprom10
  store %struct.TopKEntry* %arrayidx11, %struct.TopKEntry** %entry_b, align 8
  %14 = load %struct.TopKEntry*, %struct.TopKEntry** %entry_a, align 8
  %cost = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %14, i32 0, i32 1
  %15 = load float, float* %cost, align 4
  %16 = load %struct.TopKEntry*, %struct.TopKEntry** %entry_b, align 8
  %cost12 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %16, i32 0, i32 1
  %17 = load float, float* %cost12, align 4
  %sub = fsub float %15, %17
  %call = call i32 @sign(float noundef %sub)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @top_k_entry_finder_insert(%struct.TopKPacketFinder_struct* noundef %finder, i64 %entry.coerce0, i64 %entry.coerce1) #0 {
entry:
  %entry2 = alloca %struct.TopKEntry, align 4
  %finder.addr = alloca %struct.TopKPacketFinder_struct*, align 8
  %count = alloca i64, align 8
  %pos = alloca i64, align 8
  %maximum = alloca i32, align 4
  %had_max = alloca i8, align 1
  %0 = bitcast %struct.TopKEntry* %entry2 to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %entry.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %entry.coerce1, i64* %2, align 4
  store %struct.TopKPacketFinder_struct* %finder, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %3 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %call = call i64 @top_k_packet_finder_count(%struct.TopKPacketFinder_struct* noundef %3)
  store i64 %call, i64* %count, align 8
  %4 = load i64, i64* %count, align 8
  %5 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %size = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %5, i32 0, i32 0
  %6 = load i64, i64* %size, align 8
  %cmp = icmp ult i64 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %count, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %count, align 8
  store i64 %7, i64* %pos, align 8
  %8 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %entries = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %8, i32 0, i32 1
  %9 = load %struct.TopKEntry*, %struct.TopKEntry** %entries, align 8
  %10 = load i64, i64* %pos, align 8
  %arrayidx = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %9, i64 %10
  %11 = bitcast %struct.TopKEntry* %arrayidx to i8*
  %12 = bitcast %struct.TopKEntry* %entry2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 16, i1 false)
  %13 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %13, i32 0, i32 3
  %14 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap, align 8
  %15 = load i64, i64* %pos, align 8
  %conv = trunc i64 %15 to i32
  %call3 = call zeroext i1 @max_heap_insert(%struct.MaxHeap_struct* noundef %14, i32 noundef %conv)
  br label %if.end26

if.end:                                           ; preds = %entry
  store i32 0, i32* %maximum, align 4
  %16 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap4 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %16, i32 0, i32 3
  %17 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap4, align 8
  %call5 = call zeroext i1 @max_heap_maximum(%struct.MaxHeap_struct* noundef %17, i32* noundef %maximum)
  %frombool = zext i1 %call5 to i8
  store i8 %frombool, i8* %had_max, align 1
  %18 = load i8, i8* %had_max, align 1
  %tobool = trunc i8 %18 to i1
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.25, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.top_k_entry_finder_insert, i64 0, i64 0)) #8
  unreachable

if.end7:                                          ; preds = %if.then6
  %19 = load i32, i32* %maximum, align 4
  %conv8 = zext i32 %19 to i64
  %20 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %size9 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %20, i32 0, i32 0
  %21 = load i64, i64* %size9, align 8
  %cmp10 = icmp ult i64 %conv8, %21
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end7
  br label %if.end14

if.else13:                                        ; preds = %if.end7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.25, i64 0, i64 0), i32 noundef 88, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.top_k_entry_finder_insert, i64 0, i64 0)) #8
  unreachable

if.end14:                                         ; preds = %if.then12
  %cost = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %entry2, i32 0, i32 1
  %22 = load float, float* %cost, align 4
  %23 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %entries15 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %23, i32 0, i32 1
  %24 = load %struct.TopKEntry*, %struct.TopKEntry** %entries15, align 8
  %25 = load i32, i32* %maximum, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %24, i64 %idxprom
  %cost17 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %arrayidx16, i32 0, i32 1
  %26 = load float, float* %cost17, align 4
  %cmp18 = fcmp ole float %22, %26
  br i1 %cmp18, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end14
  %27 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %entries21 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %27, i32 0, i32 1
  %28 = load %struct.TopKEntry*, %struct.TopKEntry** %entries21, align 8
  %29 = load i32, i32* %maximum, align 4
  %idxprom22 = zext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %28, i64 %idxprom22
  %30 = bitcast %struct.TopKEntry* %arrayidx23 to i8*
  %31 = bitcast %struct.TopKEntry* %entry2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 16, i1 false)
  %32 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder.addr, align 8
  %heap24 = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %32, i32 0, i32 3
  %33 = load %struct.MaxHeap_struct*, %struct.MaxHeap_struct** %heap24, align 8
  %call25 = call zeroext i1 @max_heap_update_maximum(%struct.MaxHeap_struct* noundef %33)
  br label %if.end26

if.end26:                                         ; preds = %if.then, %if.then20, %if.end14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @top_k_packet_finder_callback(i8* noundef %user_data, %struct.LZMAState* noundef %state, i64 %packet.coerce0, i16 %packet.coerce1) #0 {
entry:
  %packet = alloca %struct.LZMAPacket, align 4
  %coerce = alloca { i64, i16 }, align 4
  %user_data.addr = alloca i8*, align 8
  %state.addr = alloca %struct.LZMAState*, align 8
  %finder = alloca %struct.TopKPacketFinder_struct*, align 8
  %new_state = alloca %struct.LZMAState, align 8
  %enc = alloca %struct.EncoderInterface_struct, align 8
  %perplexity = alloca i64, align 8
  %start_position = alloca i64, align 8
  %packet.coerce = alloca { i64, i16 }, align 4
  %length = alloca i64, align 8
  %entry3 = alloca %struct.TopKEntry, align 4
  %0 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 0
  store i64 %packet.coerce0, i64* %0, align 4
  %1 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 1
  store i16 %packet.coerce1, i16* %1, align 4
  %2 = bitcast %struct.LZMAPacket* %packet to i8*
  %3 = bitcast { i64, i16 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 12, i1 false)
  store i8* %user_data, i8** %user_data.addr, align 8
  store %struct.LZMAState* %state, %struct.LZMAState** %state.addr, align 8
  %4 = load i8*, i8** %user_data.addr, align 8
  %5 = bitcast i8* %4 to %struct.TopKPacketFinder_struct*
  store %struct.TopKPacketFinder_struct* %5, %struct.TopKPacketFinder_struct** %finder, align 8
  %6 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %next_packets = getelementptr inbounds %struct.TopKPacketFinder_struct, %struct.TopKPacketFinder_struct* %6, i32 0, i32 2
  %7 = load %struct.LZMAPacket*, %struct.LZMAPacket** %next_packets, align 8
  %8 = load %struct.LZMAState*, %struct.LZMAState** %state.addr, align 8
  %position = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %8, i32 0, i32 6
  %9 = load i64, i64* %position, align 8
  %arrayidx = getelementptr inbounds %struct.LZMAPacket, %struct.LZMAPacket* %7, i64 %9
  %call = call zeroext i1 @lzma_packet_cmp(%struct.LZMAPacket* noundef %packet, %struct.LZMAPacket* noundef %arrayidx)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.LZMAState*, %struct.LZMAState** %state.addr, align 8
  %11 = bitcast %struct.LZMAState* %new_state to i8*
  %12 = bitcast %struct.LZMAState* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 5280, i1 false)
  store i64 0, i64* %perplexity, align 8
  %position1 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %new_state, i32 0, i32 6
  %13 = load i64, i64* %position1, align 8
  store i64 %13, i64* %start_position, align 8
  call void @perplexity_encoder_new(%struct.EncoderInterface_struct* noundef %enc, i64* noundef %perplexity)
  %14 = bitcast { i64, i16 }* %packet.coerce to i8*
  %15 = bitcast %struct.LZMAPacket* %packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 12, i1 false)
  %16 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %packet.coerce, i32 0, i32 0
  %17 = load i64, i64* %16, align 4
  %18 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %packet.coerce, i32 0, i32 1
  %19 = load i16, i16* %18, align 4
  call void @lzma_encode_packet(%struct.LZMAState* noundef %new_state, %struct.EncoderInterface_struct* noundef %enc, i64 %17, i16 %19)
  %position2 = getelementptr inbounds %struct.LZMAState, %struct.LZMAState* %new_state, i32 0, i32 6
  %20 = load i64, i64* %position2, align 8
  %21 = load i64, i64* %start_position, align 8
  %sub = sub i64 %20, %21
  store i64 %sub, i64* %length, align 8
  %packet4 = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %entry3, i32 0, i32 0
  %22 = bitcast %struct.LZMAPacket* %packet4 to i8*
  %23 = bitcast %struct.LZMAPacket* %packet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 12, i1 false)
  %cost = getelementptr inbounds %struct.TopKEntry, %struct.TopKEntry* %entry3, i32 0, i32 1
  %24 = load i64, i64* %perplexity, align 8
  %25 = load i64, i64* %length, align 8
  %div = udiv i64 %24, %25
  %conv = uitofp i64 %div to float
  store float %conv, float* %cost, align 4
  %26 = load %struct.TopKPacketFinder_struct*, %struct.TopKPacketFinder_struct** %finder, align 8
  %27 = bitcast %struct.TopKEntry* %entry3 to { i64, i64 }*
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 4
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %27, i32 0, i32 1
  %31 = load i64, i64* %30, align 4
  call void @top_k_entry_finder_insert(%struct.TopKPacketFinder_struct* noundef %26, i64 %29, i64 %31)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.0 (git@github.com:davsec-lab/typedefextractor.git b9f11c52040c387bbb748e2eed04075b3f5c32ad)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
