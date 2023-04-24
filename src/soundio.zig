// Copyright 2023 XXIV
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pub const SoundIoError = enum(c_uint) {
    SoundIoErrorNone,
    
    SoundIoErrorNoMem,
    
    SoundIoErrorInitAudioBackend,
    
    SoundIoErrorSystemResources,
    
    SoundIoErrorOpeningDevice,
    SoundIoErrorNoSuchDevice,
    
    SoundIoErrorInvalid,
    
    SoundIoErrorBackendUnavailable,
    
    
    SoundIoErrorStreaming,
    
    SoundIoErrorIncompatibleDevice,
    
    SoundIoErrorNoSuchClient,
    
    SoundIoErrorIncompatibleBackend,
    
    SoundIoErrorBackendDisconnected,
    SoundIoErrorInterrupted,
    
    SoundIoErrorUnderflow,
    SoundIoErrorEncodingString,
};

pub const SoundIoChannelId = enum(c_uint) {
    SoundIoChannelIdInvalid,

    SoundIoChannelIdFrontLeft, 
    SoundIoChannelIdFrontRight,
    SoundIoChannelIdFrontCenter,
    SoundIoChannelIdLfe,
    SoundIoChannelIdBackLeft,
    SoundIoChannelIdBackRight,
    SoundIoChannelIdFrontLeftCenter,
    SoundIoChannelIdFrontRightCenter,
    SoundIoChannelIdBackCenter,
    SoundIoChannelIdSideLeft,
    SoundIoChannelIdSideRight,
    SoundIoChannelIdTopCenter,
    SoundIoChannelIdTopFrontLeft,
    SoundIoChannelIdTopFrontCenter,
    SoundIoChannelIdTopFrontRight,
    SoundIoChannelIdTopBackLeft,
    SoundIoChannelIdTopBackCenter,
    SoundIoChannelIdTopBackRight, 

    SoundIoChannelIdBackLeftCenter, 
    SoundIoChannelIdBackRightCenter,
    SoundIoChannelIdFrontLeftWide,
    SoundIoChannelIdFrontRightWide,
    SoundIoChannelIdFrontLeftHigh,
    SoundIoChannelIdFrontCenterHigh,
    SoundIoChannelIdFrontRightHigh,
    SoundIoChannelIdTopFrontLeftCenter,
    SoundIoChannelIdTopFrontRightCenter,
    SoundIoChannelIdTopSideLeft,
    SoundIoChannelIdTopSideRight,
    SoundIoChannelIdLeftLfe,
    SoundIoChannelIdRightLfe,
    SoundIoChannelIdLfe2,
    SoundIoChannelIdBottomCenter,
    SoundIoChannelIdBottomLeftCenter,
    SoundIoChannelIdBottomRightCenter,

    
    SoundIoChannelIdMsMid,
    SoundIoChannelIdMsSide,

    
    SoundIoChannelIdAmbisonicW,
    SoundIoChannelIdAmbisonicX,
    SoundIoChannelIdAmbisonicY,
    SoundIoChannelIdAmbisonicZ,

    
    SoundIoChannelIdXyX,
    SoundIoChannelIdXyY,

    SoundIoChannelIdHeadphonesLeft, 
    SoundIoChannelIdHeadphonesRight,
    SoundIoChannelIdClickTrack,
    SoundIoChannelIdForeignLanguage,
    SoundIoChannelIdHearingImpaired,
    SoundIoChannelIdNarration,
    SoundIoChannelIdHaptic,
    SoundIoChannelIdDialogCentricMix, 

    SoundIoChannelIdAux,
    SoundIoChannelIdAux0,
    SoundIoChannelIdAux1,
    SoundIoChannelIdAux2,
    SoundIoChannelIdAux3,
    SoundIoChannelIdAux4,
    SoundIoChannelIdAux5,
    SoundIoChannelIdAux6,
    SoundIoChannelIdAux7,
    SoundIoChannelIdAux8,
    SoundIoChannelIdAux9,
    SoundIoChannelIdAux10,
    SoundIoChannelIdAux11,
    SoundIoChannelIdAux12,
    SoundIoChannelIdAux13,
    SoundIoChannelIdAux14,
    SoundIoChannelIdAux15
};

pub const SoundIoChannelLayoutId = enum(c_uint) {
    SoundIoChannelLayoutIdMono,
    SoundIoChannelLayoutIdStereo,
    SoundIoChannelLayoutId2Point1,
    SoundIoChannelLayoutId3Point0,
    SoundIoChannelLayoutId3Point0Back,
    SoundIoChannelLayoutId3Point1,
    SoundIoChannelLayoutId4Point0,
    SoundIoChannelLayoutIdQuad,
    SoundIoChannelLayoutIdQuadSide,
    SoundIoChannelLayoutId4Point1,
    SoundIoChannelLayoutId5Point0Back,
    SoundIoChannelLayoutId5Point0Side,
    SoundIoChannelLayoutId5Point1,
    SoundIoChannelLayoutId5Point1Back,
    SoundIoChannelLayoutId6Point0Side,
    SoundIoChannelLayoutId6Point0Front,
    SoundIoChannelLayoutIdHexagonal,
    SoundIoChannelLayoutId6Point1,
    SoundIoChannelLayoutId6Point1Back,
    SoundIoChannelLayoutId6Point1Front,
    SoundIoChannelLayoutId7Point0,
    SoundIoChannelLayoutId7Point0Front,
    SoundIoChannelLayoutId7Point1,
    SoundIoChannelLayoutId7Point1Wide,
    SoundIoChannelLayoutId7Point1WideBack,
    SoundIoChannelLayoutIdOctagonal
};

pub const SoundIoBackend = enum(c_uint) {
    SoundIoBackendNone,
    SoundIoBackendJack,
    SoundIoBackendPulseAudio,
    SoundIoBackendAlsa,
    SoundIoBackendCoreAudio,
    SoundIoBackendWasapi,
    SoundIoBackendDummy
};

pub const SoundIoDeviceAim = enum(c_uint) {
    SoundIoDeviceAimInput,  
    SoundIoDeviceAimOutput, 
};

pub const SoundIoFormat = enum(c_uint) {
    SoundIoFormatInvalid,
    SoundIoFormatS8,        
    SoundIoFormatU8,        
    SoundIoFormatS16LE,     
    SoundIoFormatS16BE,     
    SoundIoFormatU16LE,     
    SoundIoFormatU16BE,     
    SoundIoFormatS24LE,     
    SoundIoFormatS24BE,     
    SoundIoFormatU24LE,     
    SoundIoFormatU24BE,     
    SoundIoFormatS32LE,     
    SoundIoFormatS32BE,     
    SoundIoFormatU32LE,     
    SoundIoFormatU32BE,     
    SoundIoFormatFloat32LE, 
    SoundIoFormatFloat32BE, 
    SoundIoFormatFloat64LE, 
    SoundIoFormatFloat64BE,
};

pub const SoundIoFormatS16NE = SoundIoFormat.SoundIoFormatS16LE;
pub const SoundIoFormatU16NE = SoundIoFormat.SoundIoFormatU16LE;
pub const SoundIoFormatS24NE = SoundIoFormat.SoundIoFormatS24LE;
pub const SoundIoFormatU24NE = SoundIoFormat.SoundIoFormatU24LE;
pub const SoundIoFormatS32NE = SoundIoFormat.SoundIoFormatS32LE;
pub const SoundIoFormatU32NE = SoundIoFormat.SoundIoFormatU32LE;
pub const SoundIoFormatFloat32NE = SoundIoFormat.SoundIoFormatFloat32LE;
pub const SoundIoFormatFloat64NE = SoundIoFormat.SoundIoFormatFloat64LE;
pub const SoundIoFormatS16FE = SoundIoFormat.SoundIoFormatS16BE;
pub const SoundIoFormatU16FE = SoundIoFormat.SoundIoFormatU16BE;
pub const SoundIoFormatS24FE = SoundIoFormat.SoundIoFormatS24BE;
pub const SoundIoFormatU24FE = SoundIoFormat.SoundIoFormatU24BE;
pub const SoundIoFormatS32FE = SoundIoFormat.SoundIoFormatS32BE;
pub const SoundIoFormatU32FE = SoundIoFormat.SoundIoFormatU32BE;
pub const SoundIoFormatFloat32FE = SoundIoFormat.SoundIoFormatFloat32BE;
pub const SoundIoFormatFloat64FE = SoundIoFormat.SoundIoFormatFloat64BE;
pub const SOUNDIO_MAX_CHANNELS = @as(c_int, 24);

pub const SoundIoChannelLayout = extern struct {
    name: [*c]const u8,
    channel_count: c_int,
    channels: [24]SoundIoChannelId,
};

pub const SoundIoSampleRateRange = extern struct {
    min: c_int,
    max: c_int,
};

pub const SoundIoChannelArea = extern struct {
    ptr: [*c]u8,
    step: c_int,
};

pub const SoundIo = extern struct {
    userdata: ?*anyopaque,
    on_devices_change: ?*const fn ([*c]SoundIo) callconv(.C) void,
    on_backend_disconnect: ?*const fn ([*c]SoundIo, c_int) callconv(.C) void,
    on_events_signal: ?*const fn ([*c]SoundIo) callconv(.C) void,
    current_backend: SoundIoBackend,
    app_name: [*c]const u8,
    emit_rtprio_warning: ?*const fn () callconv(.C) void,
    jack_info_callback: ?*const fn ([*c]const u8) callconv(.C) void,
    jack_error_callback: ?*const fn ([*c]const u8) callconv(.C) void,
};

pub const SoundIoDevice = extern struct {
    soundio: [*c]SoundIo,
    id: [*c]u8,
    name: [*c]u8,
    aim: SoundIoDeviceAim,
    layouts: [*c]SoundIoChannelLayout,
    layout_count: c_int,
    current_layout: SoundIoChannelLayout,
    formats: [*c]SoundIoFormat,
    format_count: c_int,
    current_format: SoundIoFormat,
    sample_rates: [*c]SoundIoSampleRateRange,
    sample_rate_count: c_int,
    sample_rate_current: c_int,
    software_latency_min: f64,
    software_latency_max: f64,
    software_latency_current: f64,
    is_raw: bool,
    ref_count: c_int,
    probe_error: c_int,
};

pub const SoundIoOutStream = extern struct {
    device: [*c]SoundIoDevice,
    format: SoundIoFormat,
    sample_rate: c_int,
    layout: SoundIoChannelLayout,
    software_latency: f64,
    volume: f32,
    userdata: ?*anyopaque,
    write_callback: ?*const fn ([*c]SoundIoOutStream, c_int, c_int) callconv(.C) void,
    underflow_callback: ?*const fn ([*c]SoundIoOutStream) callconv(.C) void,
    error_callback: ?*const fn ([*c]SoundIoOutStream, c_int) callconv(.C) void,
    name: [*c]const u8,
    non_terminal_hint: bool,
    bytes_per_frame: c_int,
    bytes_per_sample: c_int,
    layout_error: c_int,
};

pub const SoundIoInStream = extern struct {
    device: [*c]SoundIoDevice,
    format: SoundIoFormat,
    sample_rate: c_int,
    layout: SoundIoChannelLayout,
    software_latency: f64,
    userdata: ?*anyopaque,
    read_callback: ?*const fn ([*c]SoundIoInStream, c_int, c_int) callconv(.C) void,
    overflow_callback: ?*const fn ([*c]SoundIoInStream) callconv(.C) void,
    error_callback: ?*const fn ([*c]SoundIoInStream, c_int) callconv(.C) void,
    name: [*c]const u8,
    non_terminal_hint: bool,
    bytes_per_frame: c_int,
    bytes_per_sample: c_int,
    layout_error: c_int,
};

pub const SoundIoRingBuffer = opaque {};

pub extern "C" fn soundio_version_string() [*c]const u8;
pub extern "C" fn soundio_version_major() c_int;
pub extern "C" fn soundio_version_minor() c_int;
pub extern "C" fn soundio_version_patch() c_int;
pub extern "C" fn soundio_create() [*c]SoundIo;
pub extern "C" fn soundio_destroy(soundio: [*c]SoundIo) void;
pub extern "C" fn soundio_connect(soundio: [*c]SoundIo) c_int;
pub extern "C" fn soundio_connect_backend(soundio: [*c]SoundIo, backend: SoundIoBackend) c_int;
pub extern "C" fn soundio_disconnect(soundio: [*c]SoundIo) void;
pub extern "C" fn soundio_strerror(@"error": c_int) [*c]const u8;
pub extern "C" fn soundio_backend_name(backend: SoundIoBackend) [*c]const u8;
pub extern "C" fn soundio_backend_count(soundio: [*c]SoundIo) c_int;
pub extern "C" fn soundio_get_backend(soundio: [*c]SoundIo, index: c_int) SoundIoBackend;
pub extern "C" fn soundio_have_backend(backend: SoundIoBackend) bool;
pub extern "C" fn soundio_flush_events(soundio: [*c]SoundIo) void;
pub extern "C" fn soundio_wait_events(soundio: [*c]SoundIo) void;
pub extern "C" fn soundio_wakeup(soundio: [*c]SoundIo) void;
pub extern "C" fn soundio_force_device_scan(soundio: [*c]SoundIo) void;
pub extern "C" fn soundio_channel_layout_equal(a: [*c]const SoundIoChannelLayout, b: [*c]const SoundIoChannelLayout) bool;
pub extern "C" fn soundio_get_channel_name(id: SoundIoChannelId) [*c]const u8;
pub extern "C" fn soundio_parse_channel_id(str: [*c]const u8, str_len: c_int) SoundIoChannelId;
pub extern "C" fn soundio_channel_layout_builtin_count() c_int;
pub extern "C" fn soundio_channel_layout_get_builtin(index: c_int) [*c]const SoundIoChannelLayout;
pub extern "C" fn soundio_channel_layout_get_default(channel_count: c_int) [*c]const SoundIoChannelLayout;
pub extern "C" fn soundio_channel_layout_find_channel(layout: [*c]const SoundIoChannelLayout, channel: SoundIoChannelId) c_int;
pub extern "C" fn soundio_channel_layout_detect_builtin(layout: [*c]SoundIoChannelLayout) bool;
pub extern "C" fn soundio_best_matching_channel_layout(preferred_layouts: [*c]const SoundIoChannelLayout, preferred_layout_count: c_int, available_layouts: [*c]const SoundIoChannelLayout, available_layout_count: c_int) [*c]const SoundIoChannelLayout;
pub extern "C" fn soundio_sort_channel_layouts(layouts: [*c]SoundIoChannelLayout, layout_count: c_int) void;
pub extern "C" fn soundio_get_bytes_per_sample(format: SoundIoFormat) c_int;
pub extern "C" fn soundio_format_string(format: SoundIoFormat) [*c]const u8;
pub extern "C" fn soundio_input_device_count(soundio: [*c]SoundIo) c_int;
pub extern "C" fn soundio_output_device_count(soundio: [*c]SoundIo) c_int;
pub extern "C" fn soundio_get_input_device(soundio: [*c]SoundIo, index: c_int) [*c]SoundIoDevice;
pub extern "C" fn soundio_get_output_device(soundio: [*c]SoundIo, index: c_int) [*c]SoundIoDevice;
pub extern "C" fn soundio_default_input_device_index(soundio: [*c]SoundIo) c_int;
pub extern "C" fn soundio_default_output_device_index(soundio: [*c]SoundIo) c_int;
pub extern "C" fn soundio_device_ref(device: [*c]SoundIoDevice) void;
pub extern "C" fn soundio_device_unref(device: [*c]SoundIoDevice) void;
pub extern "C" fn soundio_device_equal(a: [*c]const SoundIoDevice, b: [*c]const SoundIoDevice) bool;
pub extern "C" fn soundio_device_sort_channel_layouts(device: [*c]SoundIoDevice) void;
pub extern "C" fn soundio_device_supports_format(device: [*c]SoundIoDevice, format: SoundIoFormat) bool;
pub extern "C" fn soundio_device_supports_layout(device: [*c]SoundIoDevice, layout: [*c]const SoundIoChannelLayout) bool;
pub extern "C" fn soundio_device_supports_sample_rate(device: [*c]SoundIoDevice, sample_rate: c_int) bool;
pub extern "C" fn soundio_device_nearest_sample_rate(device: [*c]SoundIoDevice, sample_rate: c_int) c_int;
pub extern "C" fn soundio_outstream_create(device: [*c]SoundIoDevice) [*c]SoundIoOutStream;
pub extern "C" fn soundio_outstream_destroy(outstream: [*c]SoundIoOutStream) void;
pub extern "C" fn soundio_outstream_open(outstream: [*c]SoundIoOutStream) c_int;
pub extern "C" fn soundio_outstream_start(outstream: [*c]SoundIoOutStream) c_int;
pub extern "C" fn soundio_outstream_begin_write(outstream: [*c]SoundIoOutStream, areas: [*c][*c]SoundIoChannelArea, frame_count: [*c]c_int) c_int;
pub extern "C" fn soundio_outstream_end_write(outstream: [*c]SoundIoOutStream) c_int;
pub extern "C" fn soundio_outstream_clear_buffer(outstream: [*c]SoundIoOutStream) c_int;
pub extern "C" fn soundio_outstream_pause(outstream: [*c]SoundIoOutStream, pause: bool) c_int;
pub extern "C" fn soundio_outstream_get_latency(outstream: [*c]SoundIoOutStream, out_latency: [*c]f64) c_int;
pub extern "C" fn soundio_outstream_set_volume(outstream: [*c]SoundIoOutStream, volume: f64) c_int;
pub extern "C" fn soundio_instream_create(device: [*c]SoundIoDevice) [*c]SoundIoInStream;
pub extern "C" fn soundio_instream_destroy(instream: [*c]SoundIoInStream) void;
pub extern "C" fn soundio_instream_open(instream: [*c]SoundIoInStream) c_int;
pub extern "C" fn soundio_instream_start(instream: [*c]SoundIoInStream) c_int;
pub extern "C" fn soundio_instream_begin_read(instream: [*c]SoundIoInStream, areas: [*c][*c]SoundIoChannelArea, frame_count: [*c]c_int) c_int;
pub extern "C" fn soundio_instream_end_read(instream: [*c]SoundIoInStream) c_int;
pub extern "C" fn soundio_instream_pause(instream: [*c]SoundIoInStream, pause: bool) c_int;
pub extern "C" fn soundio_instream_get_latency(instream: [*c]SoundIoInStream, out_latency: [*c]f64) c_int;
pub extern "C" fn soundio_ring_buffer_create(soundio: [*c]SoundIo, requested_capacity: c_int) ?*SoundIoRingBuffer;
pub extern "C" fn soundio_ring_buffer_destroy(ring_buffer: ?*SoundIoRingBuffer) void;
pub extern "C" fn soundio_ring_buffer_capacity(ring_buffer: ?*SoundIoRingBuffer) c_int;
pub extern "C" fn soundio_ring_buffer_write_ptr(ring_buffer: ?*SoundIoRingBuffer) [*c]u8;
pub extern "C" fn soundio_ring_buffer_advance_write_ptr(ring_buffer: ?*SoundIoRingBuffer, count: c_int) void;
pub extern "C" fn soundio_ring_buffer_read_ptr(ring_buffer: ?*SoundIoRingBuffer) [*c]u8;
pub extern "C" fn soundio_ring_buffer_advance_read_ptr(ring_buffer: ?*SoundIoRingBuffer, count: c_int) void;
pub extern "C" fn soundio_ring_buffer_fill_count(ring_buffer: ?*SoundIoRingBuffer) c_int;
pub extern "C" fn soundio_ring_buffer_free_count(ring_buffer: ?*SoundIoRingBuffer) c_int;
pub extern "C" fn soundio_ring_buffer_clear(ring_buffer: ?*SoundIoRingBuffer) void;

pub fn soundio_get_bytes_per_frame(arg_format: SoundIoFormat, arg_channel_count: c_int) callconv(.C) c_int {
    var format = arg_format;
    var channel_count = arg_channel_count;
    return soundio_get_bytes_per_sample(format) * channel_count;
}
pub fn soundio_get_bytes_per_second(arg_format: SoundIoFormat, arg_channel_count: c_int, arg_sample_rate: c_int) callconv(.C) c_int {
    var format = arg_format;
    var channel_count = arg_channel_count;
    var sample_rate = arg_sample_rate;
    return soundio_get_bytes_per_frame(format, channel_count) * sample_rate;
}
