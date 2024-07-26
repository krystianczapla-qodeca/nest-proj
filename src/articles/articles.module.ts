import { Module } from '@nestjs/common';
import { ArticlesService } from './articles.service';
import { ArticlesController } from './articles.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [ArticlesController], // obsługa zapytań i zwracanie odpowiedzi
  providers: [ArticlesService], // wsparcie kontrolerów, zawierająlogikę biznesową wykorzystywaną przez kontrolery
  imports: [PrismaModule],
})
export class ArticlesModule {}
