#include<stdio.h>
#include<stdint.h>
#include<limits.h> 

#define MKTAG(a,b,c,d) ((a) | ((b) << 8) | ((c) << 16) | ((unsigned)(d) << 24))
#define FFERRTAG(a, b, c, d) (-(int)MKTAG(a, b, c, d))
#define AVERROR_PATCHWELCOME       FFERRTAG( 'P','A','W','E') ///< Not yet implemented in FFmpeg, patches welcome
#define AV_CODEC_ID_ADPCM_IMA_WAV   0x0069
#define AV_CODEC_ID_ADPCM_MS        0x0002

int ff_mov_write_packet2(int codec_id, int size, int frame_size, long sample_size){
 unsigned int samples_in_chunk = 0;
//  if (codec_id == AV_CODEC_ID_AMR_NB) {
//         /* We must find out how many AMR blocks there are in one packet */
//         static const uint16_t packed_size[16] =
//             {13, 14, 16, 18, 20, 21, 27, 32, 6, 0, 0, 0, 0, 0, 0, 1};
//         int len = 0;

//         while (len < size && samples_in_chunk < 100) {
//             len += packed_size[(pkt->data[len] >> 3) & 0x0F];
//             samples_in_chunk++;
//         }
//         if (samples_in_chunk > 1) {
//             // av_log(s, AV_LOG_ERROR, "fatal error, input is not a single packet, implement a AVParser for it\n");
//             return -1;
//         }
//     } else 
  if (codec_id == AV_CODEC_ID_ADPCM_MS ||
               codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        samples_in_chunk = frame_size;
    } else if (sample_size)
        samples_in_chunk = size / sample_size;
    else
        samples_in_chunk = 1;

    if (samples_in_chunk < 1) {
        // av_log(s, AV_LOG_ERROR, "fatal error, input packet contains no samples\n");
        return AVERROR_PATCHWELCOME;
    }
    return samples_in_chunk;

}
int ff_mov_write_packet(int codec_id, int size, int frame_size, long sample_size){
 unsigned int samples_in_chunk = 0;
  if (codec_id == AV_CODEC_ID_ADPCM_MS ||
               codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        samples_in_chunk = frame_size;
    } else if (sample_size)
        samples_in_chunk = size / sample_size;
    else
        samples_in_chunk = 1;

    if (samples_in_chunk < 1) {
        // av_log(s, AV_LOG_ERROR, "fatal error, input packet contains no samples\n");
        return AVERROR_PATCHWELCOME;
    }
    return samples_in_chunk;

}

int main(){
 return 0;
} 