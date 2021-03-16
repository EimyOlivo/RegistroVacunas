using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace RegistroVacunas.Models
{
    public partial class registro_vacunasContext : DbContext
    {
        public registro_vacunasContext()
        {
        }

        public registro_vacunasContext(DbContextOptions<registro_vacunasContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Client> Client { get; set; }
        public virtual DbSet<Provincias> Provincias { get; set; }
        public virtual DbSet<Vacunas> Vacunas { get; set; }
        public virtual DbSet<VacunasExistentes> VacunasExistentes { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseMySql("server=localhost;uid=root;pwd=;database=registro_vacunas", x => x.ServerVersion("8.0.18-mysql"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Client>(entity =>
            {
                entity.ToTable("client");

                entity.Property(e => e.Id).HasColumnType("int(10)");

                entity.Property(e => e.Apellido)
                    .IsRequired()
                    .HasColumnType("tinytext")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");

                entity.Property(e => e.Cedula)
                    .IsRequired()
                    .HasColumnType("text")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");

                entity.Property(e => e.FechaNacimiento)
                    .IsRequired()
                    .HasColumnName("Fecha_Nacimiento")
                    .HasColumnType("text")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnType("tinytext")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");

                entity.Property(e => e.Provincia)
                    .IsRequired()
                    .HasColumnType("text")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");

                entity.Property(e => e.Telefono)
                    .IsRequired()
                    .HasColumnType("tinytext")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");
            });

            modelBuilder.Entity<Provincias>(entity =>
            {
                entity.ToTable("provincias");

                entity.Property(e => e.Id).HasColumnType("int(50)");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnType("text")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");
            });

            modelBuilder.Entity<Vacunas>(entity =>
            {
                entity.ToTable("vacunas");

                entity.HasIndex(e => e.IdClient)
                    .HasName("FK_Id_cliente");

                entity.Property(e => e.Id).HasColumnType("int(10)");

                entity.Property(e => e.FirstDosis)
                    .HasColumnName("firstDosis")
                    .HasColumnType("datetime");

                entity.Property(e => e.IdClient).HasColumnType("int(10)");

                entity.Property(e => e.SecondDosis).HasColumnType("datetime");

                entity.Property(e => e.Type)
                    .IsRequired()
                    .HasColumnName("type")
                    .HasColumnType("tinytext")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");

                entity.HasOne(d => d.IdClientNavigation)
                    .WithMany(p => p.Vacunas)
                    .HasForeignKey(d => d.IdClient)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK_Id_cliente");
            });

            modelBuilder.Entity<VacunasExistentes>(entity =>
            {
                entity.ToTable("vacunas_existentes");

                entity.Property(e => e.Id).HasColumnType("int(50)");

                entity.Property(e => e.Nombre)
                    .IsRequired()
                    .HasColumnType("text")
                    .HasCharSet("utf8mb4")
                    .HasCollation("utf8mb4_general_ci");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
