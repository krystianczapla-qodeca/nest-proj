import { PartialType } from '@nestjs/swagger';
import { CreateArticleDto } from './create-article.dto';
import { ApiProperty } from '@nestjs/swagger';

export class UpdateArticleDto extends PartialType(CreateArticleDto) {
    @ApiProperty()
    title: string;
    
    @ApiProperty()
    description?: string;

    @ApiProperty()
    body: string;

    @ApiProperty({ default: false })
    published?: boolean = false;
}